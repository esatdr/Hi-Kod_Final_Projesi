import 'package:flutter/material.dart';

class VeriMahremiyetiEkrani extends StatelessWidget {
  const VeriMahremiyetiEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "         Veri Mahremiyeti",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Veri mahremiyeti, kisisel verilerin korunmasini icerir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Veri mahremiyetini korumanin yollari sunlardir:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildMahremiyetAdimi("Kisisel Bilgi Paylasimi", "Sadece gerekli durumlarda kisisel bilgilerinizi paylasin.", Icons.privacy_tip),
            const SizedBox(height: 10),
            _buildMahremiyetAdimi("Veri Sifreleme", "Verilerinizi sifrelemek, yetkisiz erisime karsi korur.", Icons.enhanced_encryption),
            const SizedBox(height: 10),
            _buildMahremiyetAdimi("Gizlilik Ayarlari", "Cihazlarda gizlilik ayarlarini etkinlestirin.", Icons.settings),
            const SizedBox(height: 10),
            _buildMahremiyetAdimi("Guvenli Baglanti", "HTTPS baglantilarini tercih edin.", Icons.wifi_lock),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMahremiyetAdimi(String title, String description, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
