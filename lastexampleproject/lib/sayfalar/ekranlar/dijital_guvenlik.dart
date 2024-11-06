import 'package:flutter/material.dart';

class DijitalGuvenlikEkrani extends StatelessWidget {
  const DijitalGuvenlikEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Dijital Güvenlik",
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
              "Dijital guvenlik, cevrimici guvenliginizi koruma yollaridir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital guvenligin temel ilkeleri sunlardir:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildGuvenlikAdimi("Guclu Sifreler", "Guclu sifreler kullanmak, hesabinizi korumanin ilk adimidir.", Icons.lock),
            const SizedBox(height: 10),
            _buildGuvenlikAdimi("Iki Faktorlu Kimlik Dogrulama", "2FA etkinlestirmek, hesabiniza ekstra bir koruma katmani ekler.", Icons.security),
            const SizedBox(height: 10),
            _buildGuvenlikAdimi("Guncel Yazilim", "Bilgisayar ve mobil cihazlari guncel tutmak, guvenlik aciklarini azaltir.", Icons.update),
            const SizedBox(height: 10),
            _buildGuvenlikAdimi("Supheli Baglantilar", "Supheli baglantilara dikkat etmek, oltalama saldirilarina karsi korur.", Icons.link),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildGuvenlikAdimi(String title, String description, IconData icon) {
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
