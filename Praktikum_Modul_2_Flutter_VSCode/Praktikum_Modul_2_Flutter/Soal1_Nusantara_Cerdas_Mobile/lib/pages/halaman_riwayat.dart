import 'package:flutter/material.dart';

class HalamanRiwayat extends StatelessWidget {
  const HalamanRiwayat({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Riwayat Laporan')),
    body: ListView(padding: const EdgeInsets.all(16), children: const [
      Card(child: ListTile(leading: Icon(Icons.lightbulb_outline), title: Text('Lampu jalan tidak menyala'), subtitle: Text('Status: Dalam pemeriksaan'))),
      Card(child: ListTile(leading: Icon(Icons.water_drop_outlined), title: Text('Saluran air tersumbat'), subtitle: Text('Status: Selesai'))),
      Card(child: ListTile(leading: Icon(Icons.delete_outline), title: Text('Sampah menumpuk'), subtitle: Text('Status: Menunggu petugas'))),
    ]),
    floatingActionButton: FloatingActionButton(onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Form laporan baru siap diisi.'))), child: const Icon(Icons.add)),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: BottomAppBar(shape: const CircularNotchedRectangle(), notchMargin: 8, child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      IconButton(tooltip: 'Cari', onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fitur pencarian laporan.'))), icon: const Icon(Icons.search)),
      IconButton(tooltip: 'Filter', onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fitur filter laporan.'))), icon: const Icon(Icons.filter_list)),
      const SizedBox(width: 40),
      IconButton(tooltip: 'Urutkan', onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Laporan diurutkan.'))), icon: const Icon(Icons.sort)),
      IconButton(tooltip: 'Lainnya', onPressed: () => showAboutDialog(context: context, applicationName: 'Nusantara Cerdas'), icon: const Icon(Icons.more_vert)),
    ])),
  );
}
