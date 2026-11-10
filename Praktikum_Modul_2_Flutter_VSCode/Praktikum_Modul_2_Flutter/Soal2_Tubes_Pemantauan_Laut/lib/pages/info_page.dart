import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Laut'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.waves),
              title: Text('Kondisi gelombang'),
              subtitle: Text(
                'Informasi contoh; pastikan memeriksa sumber resmi.',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Cuaca'),
              subtitle: Text(
                'Data cuaca belum terhubung ke layanan eksternal.',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.phishing),
              title: Text('Lokasi ikan'),
              subtitle: Text(
                'Lokasi contoh untuk demonstrasi antarmuka.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}