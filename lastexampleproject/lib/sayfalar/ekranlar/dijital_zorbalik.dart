import 'package:flutter/material.dart';

class DijitalZorbalik extends StatelessWidget {
  const DijitalZorbalik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Dijital Zorbalık",
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
              "Dijital zorbalık, çevrimiçi platformlarda gerçekleştirilen zorbalık türüdür.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital zorbalığın etkileri şunlardır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildEtkilerKart("Kişisel Güvenlik",
                "Bireylerin kişisel güvenliği tehlikeye girebilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Psikolojik Etkiler",
                "Kaygı, depresyon gibi psikolojik sorunlara yol açabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Sosyal İlişkiler",
                "Kişinin sosyal ilişkilerini olumsuz etkileyebilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("İtibar Kaybı",
                "Kişinin çevrimiçi itibarı zedelenebilir."),
          ],
        ),
      ),
    );
  }

  Widget _buildEtkilerKart(String title, String description) {
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
