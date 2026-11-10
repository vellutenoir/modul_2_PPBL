import 'package:flutter/material.dart';
import 'navigation/app_routes.dart';
void main() => runApp(const PemantauanLautApp());
class PemantauanLautApp extends StatelessWidget {
  const PemantauanLautApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(title: 'Pantau Laut Cirebon', debugShowCheckedModeBanner: false,
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF007C91)), useMaterial3: true),
    initialRoute: AppRoutes.home, routes: AppRoutes.routes(), onGenerateRoute: AppRoutes.generate, onUnknownRoute: AppRoutes.unknown);
}
