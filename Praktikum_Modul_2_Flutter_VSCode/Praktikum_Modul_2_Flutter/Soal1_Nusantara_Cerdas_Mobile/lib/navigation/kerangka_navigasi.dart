import 'package:flutter/material.dart';
import '../pages/halaman_beranda.dart';
import '../pages/halaman_layanan.dart';
import '../pages/halaman_warga.dart';

class KerangkaNavigasi extends StatefulWidget {
  const KerangkaNavigasi({super.key});

  @override
  State<KerangkaNavigasi> createState() => _KerangkaNavigasiState();
}

class _KerangkaNavigasiState extends State<KerangkaNavigasi> {
  int indeks = 0;
  final List<Widget> _halaman = const [
    HalamanBeranda(),
    HalamanLayanan(),
    HalamanWarga(),
  ];
  final List<String> _judul = const ['Beranda', 'Layanan', 'Warga'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_judul[indeks]),
      ),
      body: _halaman[indeks],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indeks,
        onTap: (i) => setState(() => indeks = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: 'Layanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Warga',
          ),
        ],
      ),
    );
  }
}