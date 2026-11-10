import 'package:flutter/material.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});
  static const pilar = [
    ('Smart Governance', Icons.account_balance, 'Layanan pemerintah yang mudah diakses.'),
    ('Smart Branding', Icons.campaign, 'Informasi dan identitas kota.'),
    ('Smart Economy', Icons.trending_up, 'Dukungan bagi kegiatan ekonomi warga.'),
    ('Smart Living', Icons.health_and_safety, 'Kualitas hidup dan layanan kesehatan.'),
    ('Smart Society', Icons.groups, 'Masyarakat yang inklusif dan terhubung.'),
    ('Smart Environment', Icons.eco, 'Lingkungan kota yang terjaga.'),
  ];
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(16), children: [
    Card(color: Theme.of(context).colorScheme.primaryContainer, child: const Padding(padding: EdgeInsets.all(20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(Icons.location_city, size: 42), SizedBox(height: 12),
      Text('Selamat datang di Nusantara Cerdas', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      SizedBox(height: 8), Text('Akses layanan publik dan informasi kota dalam satu aplikasi.'),
    ]))),
    const Padding(padding: EdgeInsets.symmetric(vertical: 12), child: Text('Enam Pilar Smart City', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    LayoutBuilder(builder: (context, constraints) {
      final columns = constraints.maxWidth >= 800 ? 3 : constraints.maxWidth >= 500 ? 2 : 1;
      return GridView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemCount: pilar.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: columns, childAspectRatio: columns == 1 ? 3.0 : 1.7, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemBuilder: (context, i) => Card(child: Padding(padding: const EdgeInsets.all(14), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Icon(pilar[i].$2, size: 30, color: Theme.of(context).colorScheme.primary), const SizedBox(height: 8), Text(pilar[i].$1, style: const TextStyle(fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(pilar[i].$3)]))),
      );
    }),
  ]);
}
