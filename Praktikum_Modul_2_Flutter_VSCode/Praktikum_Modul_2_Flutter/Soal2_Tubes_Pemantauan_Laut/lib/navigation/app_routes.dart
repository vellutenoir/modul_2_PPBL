import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/report_page.dart';
import '../pages/info_page.dart';
import '../pages/detail_page.dart';
class AppRoutes {
  static const home = '/'; static const report = '/laporan'; static const info = '/informasi'; static const detail = '/detail';
  static Map<String, WidgetBuilder> routes() => {home: (_) => const HomePage(), report: (_) => const ReportPage(), info: (_) => const InfoPage()};
  static Route<dynamic>? generate(RouteSettings settings) {
    if (settings.name == detail) {
      final args = settings.arguments;
      if (args is Map<String, String>) return MaterialPageRoute<void>(builder: (_) => DetailPage(data: args));
    }
    return null;
  }
  static Route<dynamic> unknown(RouteSettings settings) => MaterialPageRoute<void>(builder: (_) => Scaffold(appBar: AppBar(title: const Text('Halaman tidak ditemukan')), body: Center(child: Text('Route ${settings.name} tidak tersedia.'))));
}
