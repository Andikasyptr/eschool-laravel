<div class="p-4">
    <div class="overflow-x-auto">
        <table class="min-w-full divide-y divide-gray-200 shadow-md rounded-lg">
            <thead class="bg-blue-50">
                <tr>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">No</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nama</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Tanggal</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Jam Masuk</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Jam Pulang</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status Masuk</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status Pulang</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status Keseluruhan</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Lokasi Masuk</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Lokasi Pulang</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Foto Masuk</th>
                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Foto Pulang</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
                @forelse($absensis as $index => $absen)
                    <tr class="hover:bg-blue-50 transition duration-150">
                        <td class="px-4 py-2 whitespace-nowrap text-sm text-gray-700">{{ $absensis->firstItem() + $index }}</td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm text-gray-700">{{ $absen->user->name ?? '-' }}</td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm text-gray-700">{{ $absen->tanggal }}</td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm text-gray-700">{{ $absen->jam_masuk ?? '-' }}</td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm text-gray-700">{{ $absen->jam_pulang ?? '-' }}</td>

                        {{-- Status Masuk --}}
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @php
                                $statusMasukColors = [
                                    'Tepat Waktu' => 'bg-green-100 text-green-800',
                                    'Terlambat' => 'bg-red-100 text-red-800',
                                    'Belum Absen' => 'bg-gray-200 text-gray-700',
                                ];
                            @endphp
                            <span class="px-2 py-1 rounded-full text-xs font-semibold {{ $statusMasukColors[$absen->status_masuk] ?? 'bg-gray-200 text-gray-700' }}">
                                {{ $absen->status_masuk ?? '-' }}
                            </span>
                        </td>

                        {{-- Status Pulang --}}
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @php
                                $statusPulangColors = [
                                    'Hadir Lengkap' => 'bg-green-100 text-green-800',
                                    'Pulang Cepat' => 'bg-yellow-100 text-yellow-800',
                                    'Belum Pulang' => 'bg-blue-100 text-blue-800',
                                ];
                            @endphp
                            <span class="px-2 py-1 rounded-full text-xs font-semibold {{ $statusPulangColors[$absen->status_pulang] ?? 'bg-gray-200 text-gray-700' }}">
                                {{ $absen->status_pulang ?? '-' }}
                            </span>
                        </td>

                        {{-- Status Keseluruhan --}}
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @php
                                $statusKeseluruhanColors = [
                                    'Alpha' => 'bg-gray-200 text-gray-700',
                                    'Belum Lengkap' => 'bg-blue-100 text-blue-800',
                                    'Hadir Lengkap' => 'bg-green-100 text-green-800',
                                ];
                            @endphp
                            <span class="px-2 py-1 rounded-full text-xs font-semibold {{ $statusKeseluruhanColors[$absen->status_keseluruhan] ?? 'bg-gray-200 text-gray-700' }}">
                                {{ $absen->status_keseluruhan ?? '-' }}
                            </span>
                        </td>

                        {{-- Lokasi --}}
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @if($absen->lokasi_masuk)
                                <a href="https://www.google.com/maps?q={{ urlencode($absen->lokasi_masuk) }}" target="_blank" class="text-blue-600 hover:underline">Lihat</a>
                            @else
                                -
                            @endif
                        </td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @if($absen->lokasi_pulang)
                                <a href="https://www.google.com/maps?q={{ urlencode($absen->lokasi_pulang) }}" target="_blank" class="text-blue-600 hover:underline">Lihat</a>
                            @else
                                -
                            @endif
                        </td>

                        {{-- Foto --}}
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @if ($absen->foto_masuk)
                                <a href="{{ asset($absen->foto_masuk) }}" target="_blank" class="text-blue-600 hover:underline text-sm">Lihat</a>
                            @else
                                <span class="text-gray-400 text-sm">-</span>
                            @endif
                        </td>
                        <td class="px-4 py-2 whitespace-nowrap text-sm">
                            @if ($absen->foto_pulang)
                                <a href="{{ asset($absen->foto_pulang) }}" target="_blank" class="text-blue-600 hover:underline text-sm">Lihat</a>
                            @else
                                <span class="text-gray-400 text-sm">-</span>
                            @endif
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="12" class="px-4 py-2 text-center text-gray-500">Tidak ada data</td>
                    </tr>
                @endforelse
            </tbody>
        </table>

        <div class="mt-4">
            {{ $absensis->links() }}
        </div>
    </div>
</div>
