<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up()
{
    Schema::table('siswa_pindahan', function (Blueprint $table) {
        $table->string('kode_kelas')->nullable()->after('kelas_id');
    });
}

public function down()
{
    Schema::table('siswa_pindahan', function (Blueprint $table) {
        $table->dropColumn('kode_kelas');
    });
}

};
