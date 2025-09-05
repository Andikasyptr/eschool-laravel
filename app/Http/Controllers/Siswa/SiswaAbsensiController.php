<?php

namespace App\Http\Controllers\Siswa;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiswaAbsensi;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class SiswaAbsensiController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $today = Carbon::today()->toDateString();

        $absenHariIni = SiswaAbsensi::where('user_id', $user->id)
            ->where('tanggal', $today)
            ->first();

        // Ambil 10 riwayat terakhir
        $riwayat = SiswaAbsensi::where('user_id', $user->id)
            ->orderBy('tanggal', 'desc')
            ->take(10)
            ->get();

        return view('siswa.absensi.index', compact('absenHariIni', 'riwayat'));
    }

    public function absenMasuk(Request $request)
    {
        $user = Auth::user();
        $today = now()->toDateString();

        if (SiswaAbsensi::where('user_id', $user->id)->where('tanggal', $today)->exists()) {
            return back()->with('info', 'Anda sudah absen masuk hari ini.');
        }

        // Status masuk
        $jamSekarang = now()->format('H:i');
        $statusMasuk = ($jamSekarang <= '07:00') ? 'Tepat Waktu' : 'Terlambat';

        // Simpan foto jika ada
        $fotoPath = null;
        if ($request->foto) {
            $imageData = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $request->foto));
            $filename = uniqid() . '_masuk.jpg';
            Storage::disk('public')->put('absen/' . $filename, $imageData);
            $fotoPath = 'storage/absen/' . $filename;
        }

        SiswaAbsensi::create([
            'user_id'           => $user->id,
            'tanggal'           => $today,
            'jam_masuk'         => $jamSekarang,
            'status_masuk'      => $statusMasuk,
            'lokasi_masuk'      => $request->lokasi ?? null,
            'foto_masuk'        => $fotoPath,
            'dibuat_oleh'       => $user->id,
            'status_kehadiran'  => 'Belum Lengkap', // default sebelum pulang
        ]);

        return back()->with('success', 'Berhasil absen masuk. Status: ' . $statusMasuk);
    }

    public function absenPulang(Request $request)
    {
        $user = Auth::user();
        $today = now()->toDateString();

        $absensi = SiswaAbsensi::where('user_id', $user->id)->where('tanggal', $today)->first();

        if (!$absensi) {
            return back()->with('error', 'Belum absen masuk.');
        }

        if ($absensi->jam_pulang) {
            return back()->with('info', 'Sudah absen pulang.');
        }

        // Status pulang
        $jamSekarang = now()->format('H:i');
        $statusPulang = ($jamSekarang < '14:30') ? 'Pulang Cepat' : 'Hadir Lengkap';

        // Simpan foto jika ada
        $fotoPath = null;
        if ($request->foto) {
            $imageData = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $request->foto));
            $filename = uniqid() . '_pulang.jpg';
            Storage::disk('public')->put('absen/' . $filename, $imageData);
            $fotoPath = 'storage/absen/' . $filename;
        }

        $absensi->update([
            'jam_pulang'        => $jamSekarang,
            'status_pulang'     => $statusPulang,
            'lokasi_pulang'     => $request->lokasi ?? null,
            'foto_pulang'       => $fotoPath,
            'status_kehadiran'  => $statusPulang === 'Hadir Lengkap' ? 'Hadir Lengkap' : 'Belum Lengkap',
        ]);

        return back()->with('success', 'Berhasil absen pulang. Status: ' . $statusPulang);
    }

    /**
     * Update status alpha bagi siswa yang tidak absen sampai esok hari
     */
    public function updateAlpha()
    {
        $yesterday = Carbon::yesterday()->toDateString();

        $absen = SiswaAbsensi::where('tanggal', $yesterday)
            ->whereNull('jam_masuk')
            ->get();

        foreach ($absen as $a) {
            $a->update(['status_kehadiran' => 'Alpha']);
        }
    }
}
