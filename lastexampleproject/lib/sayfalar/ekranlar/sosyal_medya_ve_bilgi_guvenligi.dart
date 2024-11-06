import 'package:flutter/material.dart';

class SosyalMedyaVeBilgiGuvenligi extends StatelessWidget {
  const SosyalMedyaVeBilgiGuvenligi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sosyal Medya Ve Bilgi Güvenliği",
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
              "Sosyal medya kullanırken dikkat edilmesi gereken önemli güvenlik hususları vardır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Güvenlik önlemleri:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Gizlilik Ayarlarını Kontrol Etmek", Icons.lock),
            const SizedBox(height: 10),
            _buildIkonluMetin("Kişisel Bilgileri Paylaşmamak", Icons.person),
            const SizedBox(height: 10),
            _buildIkonluMetin("Güçlü Parolalar Kullanmak", Icons.vpn_key),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            _buildOneriKart("Sosyal medya hesaplarınıza iki aşamalı kimlik doğrulama ekleyin."),
            const SizedBox(height: 10),
            _buildOneriKart("Güvenilir olmayan bağlantılara tıklamaktan kaçının."),
            const SizedBox(height: 10),
            _buildOneriKart("Şüpheli etkinlikleri hemen bildirin."),
          ],
        ),
      ),
    );
  }

  Widget _buildIkonluMetin(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 10),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildOneriKart(String text) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("$text", style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
