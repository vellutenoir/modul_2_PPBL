# Soal 1 — Nusantara Cerdas Mobile

Kode Flutter untuk Tugas Praktikum Modul II. Fitur yang dibuat: named routes, onUnknownRoute, push/pop dengan nilai balik, NavigationBar, NavigationDrawer, tab navigation, BottomAppBar + FloatingActionButton, dan NavigationRail adaptif.

## Cara membuka dan menjalankan di VS Code
1. Ekstrak ZIP ini.
2. Pastikan Flutter SDK dan ekstensi **Flutter** serta **Dart** sudah terpasang. Cek di terminal: `flutter doctor`.
3. Buka folder `Soal1_Nusantara_Cerdas_Mobile` di VS Code.
4. Di terminal folder proyek, jalankan:

   ```bash
   flutter create .
   flutter pub get
   flutter run -d chrome
   ```

   Untuk emulator/HP, jalankan `flutter run` lalu pilih perangkat.
5. Untuk menguji NavigationRail, jalankan pada Chrome lalu lebarkan jendela sampai lebih dari 600 piksel logis.

## Uji fitur
- Pindah Beranda, Layanan, dan Warga.
- Pada Layanan, buka tiap tab dan tekan salah satu layanan.
- Tekan **Ajukan Permohonan**; pesan hasil akan tampil sebagai SnackBar di halaman Layanan.
- Buka menu samping untuk Pengaturan Kota, Tentang Aplikasi, atau Riwayat Laporan.
- Di Riwayat Laporan, uji tombol tambah dan ikon BottomAppBar.
- Tekan ikon bug di AppBar untuk menguji `onUnknownRoute`.

Nama proyek di `pubspec.yaml` adalah `nusantara_cerdas_nav_nim`. Ganti `nim` dengan NIM sendiri bila diperlukan. Data nama warga dan layanan merupakan data contoh.
