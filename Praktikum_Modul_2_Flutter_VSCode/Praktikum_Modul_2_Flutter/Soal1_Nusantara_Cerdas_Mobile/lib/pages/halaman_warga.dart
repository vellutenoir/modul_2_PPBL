import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(16), children: [
    const Card(child: Padding(padding: EdgeInsets.all(20), child: Row(children: [CircleAvatar(radius: 32, child: Icon(Icons.person, size: 34)), SizedBox(width: 16), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Profil Warga', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), Text('Nama: Warga Nusantara'), Text('Status: Pengguna demo')]))]))),
    const SizedBox(height: 12), const Text('Riwayat Laporan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    const Card(child: ListTile(leading: Icon(Icons.report_outlined), title: Text('Lampu jalan tidak menyala'), subtitle: Text('Status: Dalam pemeriksaan'))),
    const Card(child: ListTile(leading: Icon(Icons.water_drop_outlined), title: Text('Saluran air tersumbat'), subtitle: Text('Status: Selesai'))),
    const SizedBox(height: 12), FilledButton.icon(onPressed: () => Navigator.pushNamed(context, AppRoutes.riwayat), icon: const Icon(Icons.history), label: const Text('Buka Riwayat Laporan')),
  ]);
}
