import 'package:flutter/material.dart';
import '../pages/halaman_detail_layanan.dart';
import '../pages/halaman_pengaturan.dart';
import '../pages/halaman_tentang.dart';
import '../pages/halaman_riwayat.dart';
import '../pages/halaman_tidak_ditemukan.dart';
import 'kerangka_navigasi.dart';

class AppRoutes {
  static const String beranda = '/';
  static const String detailLayanan = '/detail-layanan';
  static const String pengaturan = '/pengaturan';
  static const String tentang = '/tentang';
  static const String riwayat = '/riwayat';
  static const String routeSalah = '/uji-route-tidak-terdaftar';

  static Map<String, WidgetBuilder> daftarRoute() => {
    beranda: (_) => const KerangkaNavigasi(),
    pengaturan: (_) => const HalamanPengaturan(),
    tentang: (_) => const HalamanTentang(),
    riwayat: (_) => const HalamanRiwayat(),
  };

  static Route<dynamic>? bentukRoute(RouteSettings settings) {
    if (settings.name == detailLayanan) {
      final args = settings.arguments;
      if (args is Map<String, String>) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (_) => HalamanDetailLayanan(dataLayanan: args),
        );
      }
      return MaterialPageRoute<void>(
        builder: (_) => const HalamanTidakDitemukan(pesan: 'Argumen rincian layanan tidak valid.'),
      );
    }
    return null;
  }

  static Route<dynamic> routeTidakDikenal(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (_) => HalamanTidakDitemukan(pesan: 'Route "${settings.name}" belum terdaftar.'),
    );
  }
}
