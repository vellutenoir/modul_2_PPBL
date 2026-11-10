import 'package:flutter/material.dart';
class HalamanPengaturan extends StatelessWidget {
  const HalamanPengaturan({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Pengaturan Kota')), body: ListView(children: const [SwitchListTile(value: true, onChanged: null, title: Text('Notifikasi layanan'), subtitle: Text('Contoh pengaturan notifikasi')), ListTile(leading: Icon(Icons.language), title: Text('Bahasa'), subtitle: Text('Bahasa Indonesia'))]));
}
