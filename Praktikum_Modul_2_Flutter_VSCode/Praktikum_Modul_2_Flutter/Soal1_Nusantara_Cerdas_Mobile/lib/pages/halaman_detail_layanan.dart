import 'package:flutter/material.dart';

class HalamanDetailLayanan extends StatelessWidget {
  const HalamanDetailLayanan({super.key, required this.dataLayanan});
  final Map<String, String> dataLayanan;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Rincian Layanan')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      Icon(Icons.assignment, size: 56, color: Theme.of(context).colorScheme.primary), const SizedBox(height: 16),
      Text(dataLayanan['nama'] ?? 'Layanan', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), const SizedBox(height: 20),
      _baris(Icons.account_balance, 'Dinas penanggung jawab', dataLayanan['dinas'] ?? '-'),
      _baris(Icons.access_time, 'Jam operasional', dataLayanan['jam'] ?? '-'),
      _baris(Icons.info_outline, 'Keterangan', dataLayanan['keterangan'] ?? '-'),
      const SizedBox(height: 24),
      FilledButton.icon(onPressed: () => Navigator.pop(context, 'Permohonan ${dataLayanan['nama']} telah diajukan.'), icon: const Icon(Icons.send), label: const Text('Ajukan Permohonan')),
    ]),
  );
  Widget _baris(IconData ikon, String judul, String isi) => Padding(padding: const EdgeInsets.only(bottom: 18), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(ikon), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(isi)]))]));
}
