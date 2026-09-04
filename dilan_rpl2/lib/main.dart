// lib/main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilSekolahApp());
}

class ProfilSekolahApp extends StatelessWidget {
  const ProfilSekolahApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SMKN 1 PURWOSARI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Purwosari, Pasuruan, Jawa Timur',
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.star, color: Colors.amber, size: 24),
              const SizedBox(width: 4),
              const Text(
                '99.99',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );

    Color primaryColor = Colors.indigo;

    Column buildActionButton(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 26),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildActionButton(primaryColor, Icons.phone, 'CALL'),
          buildActionButton(primaryColor, Icons.map, 'ROUTE'),
          buildActionButton(primaryColor, Icons.language, 'WEBSITE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(24),
      child: const Text(
        'SMK Negeri 1 Purwosari merupakan salah satu sekolah menengah kejuruan '
        'yang berada di Kecamatan Purwosari, Kabupaten Pasuruan, Jawa Timur. '
        'Sekolah ini berfokus pada pendidikan kejuruan dengan membekali siswa '
        'melalui pembelajaran teori dan praktik sesuai dengan kompetensi keahlian '
        'yang dipilih. SMK Negeri 1 Purwosari juga mendorong siswa untuk '
        'mengembangkan keterampilan, kreativitas, kedisiplinan, serta kesiapan '
        'menghadapi dunia kerja maupun melanjutkan pendidikan ke jenjang yang '
        'lebih tinggi. Dengan lingkungan pendidikan yang mendukung, sekolah ini '
        'menjadi salah satu pilihan pendidikan kejuruan bagi masyarakat di wilayah '
        'Purwosari dan sekitarnya.',
        softWrap: true,
        style: TextStyle(height: 1.5, fontSize: 14),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil SMKN 1 Purwosari',
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dani Andhika Saktiawan - XI RPL'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Image.asset(
              'asset/image/skansa.jpeg',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            const Divider(indent: 24, endIndent: 24),
            textSection,
          ],
        ),
      ),
    );
  }
}
