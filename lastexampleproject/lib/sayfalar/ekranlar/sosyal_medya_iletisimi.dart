import 'package:flutter/material.dart';

class SosyalMedyaIletisimi extends StatelessWidget {
  const SosyalMedyaIletisimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "     Sosyal Medya İletişimi",
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
              "Sosyal medya, iletişim biçimlerini değiştirmiştir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "İletişim biçimlerinin değişimi:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Hızlı Bilgi Paylaşımı", Icons.share),
            const SizedBox(height: 10),
            _buildIkonluMetin("Yüz Yüze İletişimde Azalma", Icons.remove_circle),
            const SizedBox(height: 10),
            _buildIkonluMetin("Küresel Erişim", Icons.public),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Kalınlaştırıldı
            const SizedBox(height: 10),
            _buildOneriKart("Yüz yüze iletişimi önceliklendirmek."),
            const SizedBox(height: 10),
            _buildOneriKart("Sosyal medya üzerinden yapılan etkileşimlere dikkat etmek."),
            const SizedBox(height: 10),
            _buildOneriKart("Duygularınızı açıkça ifade etmeyi öğrenmek."),
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
        Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildOneriKart(String text) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(child: Text(text, style: const TextStyle(fontSize: 16))), // Metni ortaladık
        ),
      ),
    );
  }
}
