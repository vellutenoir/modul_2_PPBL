import 'package:flutter/material.dart';
class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Tentang Aplikasi')), body: const Padding(padding: EdgeInsets.all(24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(Icons.location_city, size: 56), SizedBox(height: 16), Text('Nusantara Cerdas Mobile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), SizedBox(height: 8), Text('Purwarupa layanan warga Smart City untuk praktikum Pemrograman Perangkat Bergerak Lanjut Modul II.')])));
}
