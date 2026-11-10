import 'package:flutter/material.dart';
class HalamanTidakDitemukan extends StatelessWidget {
  const HalamanTidakDitemukan({super.key, required this.pesan});
  final String pesan;
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Route Tidak Ditemukan')), body: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [const Icon(Icons.warning_amber_rounded, size: 64), const SizedBox(height: 16), Text(pesan, textAlign: TextAlign.center), const SizedBox(height: 20), FilledButton(onPressed: () => Navigator.popUntil(context, (route) => route.isFirst), child: const Text('Kembali ke Beranda'))]))));
}
