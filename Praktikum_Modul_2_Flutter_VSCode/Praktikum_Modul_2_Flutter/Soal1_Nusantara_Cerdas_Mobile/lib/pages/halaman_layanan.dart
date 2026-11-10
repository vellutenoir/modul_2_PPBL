import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class HalamanLayanan extends StatelessWidget {
  const HalamanLayanan({super.key});
  static const Map<String, List<Map<String, String>>> layanan = {
    'Perizinan': [
      {'nama':'Izin Usaha Mikro','dinas':'Dinas Penanaman Modal dan PTSP','jam':'Senin–Jumat, 08.00–15.00','keterangan':'Pengajuan dan informasi perizinan usaha mikro.'},
      {'nama':'Izin Mendirikan Bangunan','dinas':'Dinas Pekerjaan Umum dan Tata Ruang','jam':'Senin–Jumat, 08.00–15.00','keterangan':'Informasi persyaratan bangunan dan proses perizinan.'},
      {'nama':'Kartu Identitas Penduduk','dinas':'Dinas Kependudukan dan Pencatatan Sipil','jam':'Senin–Jumat, 08.00–14.00','keterangan':'Informasi administrasi identitas penduduk.'},
    ],
    'Kesehatan': [
      {'nama':'Pendaftaran Puskesmas','dinas':'Dinas Kesehatan','jam':'Senin–Sabtu, 07.30–12.00','keterangan':'Informasi pendaftaran kunjungan puskesmas.'},
      {'nama':'Jadwal Imunisasi','dinas':'Dinas Kesehatan','jam':'Sesuai jadwal puskesmas','keterangan':'Informasi jadwal dan lokasi layanan imunisasi.'},
      {'nama':'Informasi Ambulans','dinas':'Dinas Kesehatan','jam':'Layanan darurat 24 jam','keterangan':'Kontak informasi bantuan transportasi medis.'},
    ],
    'Transportasi': [
      {'nama':'Informasi Rute Bus','dinas':'Dinas Perhubungan','jam':'Setiap hari, 05.00–21.00','keterangan':'Informasi rute dan titik pemberhentian bus.'},
      {'nama':'Pengaduan Jalan Rusak','dinas':'Dinas Pekerjaan Umum','jam':'Pelaporan daring 24 jam','keterangan':'Pelaporan kondisi jalan yang perlu diperbaiki.'},
      {'nama':'Informasi Parkir','dinas':'Dinas Perhubungan','jam':'Setiap hari, 06.00–22.00','keterangan':'Informasi lokasi dan aturan parkir.'},
    ],
  };

  Future<void> _bukaDetail(BuildContext context, Map<String, String> data) async {
    final hasil = await Navigator.pushNamed(context, AppRoutes.detailLayanan, arguments: data);
    if (!context.mounted) return;
    if (hasil is String) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(hasil)));
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(length: 3, child: Column(children: [
    const Material(color: Colors.transparent, child: TabBar(isScrollable: true, tabs: [Tab(text: 'Perizinan'), Tab(text: 'Kesehatan'), Tab(text: 'Transportasi')])),
    Expanded(child: TabBarView(children: layanan.entries.map((entry) => ListView.separated(padding: const EdgeInsets.all(12), itemCount: entry.value.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, i) { final data = entry.value[i]; return Card(child: ListTile(leading: const CircleAvatar(child: Icon(Icons.article_outlined)), title: Text(data['nama']!), subtitle: Text(data['dinas']!), trailing: const Icon(Icons.chevron_right), onTap: () => _bukaDetail(context, data))); },
    )).toList())),
  ]));
}
