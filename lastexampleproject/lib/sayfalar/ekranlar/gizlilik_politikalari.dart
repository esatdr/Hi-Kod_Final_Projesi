import 'package:flutter/material.dart';

class GizlilikPolitikalari extends StatelessWidget {
  const GizlilikPolitikalari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "        Gizlilik Politikaları",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Gizlilik politikaları, kullanıcıların verilerinin nasıl toplandığı ve kullanıldığı hakkında bilgi sağlar.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Gizlilik politikalarının önemi:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildPolitikaKart("Veri Koruma",
                "Kullanıcı verilerinin güvenli bir şekilde korunması."),
            const SizedBox(height: 5),
            _buildPolitikaKart("Şeffaflık",
                "Kullanıcıların hangi verilerinin toplandığını bilmesi."),
            const SizedBox(height: 5),
            _buildPolitikaKart("Kullanım Şartları",
                "Verilerin nasıl kullanılacağını açıklayan kurallar."),
            const SizedBox(height: 5),
            _buildPolitikaKart("Kullanıcı Hakları",
                "Kullanıcıların verileri üzerindeki hakları."),
          ],
        ),
      ),
    );
  }

  Widget _buildPolitikaKart(String title, String description) {
    return Card(
      color: Colors.blue[50],
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Text(description, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
