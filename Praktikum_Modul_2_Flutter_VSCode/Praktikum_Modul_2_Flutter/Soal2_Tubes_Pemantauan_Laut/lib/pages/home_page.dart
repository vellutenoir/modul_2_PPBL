import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final titles = const ['Beranda', 'Laporan', 'Informasi Laut'];

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.of(context).size.width >= 600;

    final pages = [
      ListView(
        padding: const EdgeInsets.all(18),
        children: const [
          Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.waves, size: 48),
                  SizedBox(height: 10),
                  Text(
                    'Pantau Laut Cirebon',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Informasi kondisi laut, lokasi tangkapan, dan pelaporan lingkungan pesisir.',
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.phishing),
              title: Text('Info lokasi ikan'),
              subtitle: Text('Contoh informasi terakhir tersimpan'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.cloud_outlined),
              title: Text('Kondisi laut'),
              subtitle: Text('Periksa kondisi sebelum melaut'),
            ),
          ),
        ],
      ),
      const Center(
        child: Text('Gunakan tombol + untuk membuat laporan kondisi laut.'),
      ),
      ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Card(
            child: ListTile(
              leading: Icon(Icons.waves),
              title: Text('Kondisi gelombang'),
              subtitle: Text('Data contoh: periksa pembaruan sebelum berangkat.'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Pencemaran air'),
              subtitle: Text('Laporkan tumpahan limbah atau ikan mati.'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Detail informasi'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.info),
          ),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(titles[index]),
        actions: [
          IconButton(
            icon: const Icon(Icons.bug_report_outlined),
            onPressed: () {
              // Menampilkan SnackBar alih-alih pushNamed ke route yang tidak ada
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fitur bug report belum tersedia')),
              );
            },
          ),
        ],
      ),
      body: wide
          ? Row(
              children: [
                NavigationRail(
                  selectedIndex: index,
                  onDestinationSelected: (v) => setState(() => index = v),
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home_outlined),
                      label: Text('Beranda'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.report_outlined),
                      label: Text('Laporan'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.waves),
                      label: Text('Informasi'),
                    ),
                  ],
                ),
                const VerticalDivider(width: 1),
                Expanded(child: pages[index]),
              ],
            )
          : pages[index],
      bottomNavigationBar: wide
          ? null
          : NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (v) => setState(() => index = v),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: 'Beranda',
                ),
                NavigationDestination(
                  icon: Icon(Icons.report_outlined),
                  label: 'Laporan',
                ),
                NavigationDestination(
                  icon: Icon(Icons.waves),
                  label: 'Informasi',
                ),
              ],
            ),
      floatingActionButton: index == 1
          ? FloatingActionButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  AppRoutes.report,
                );
                if (!mounted) return;
                if (result is String) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(result)));
                }
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}