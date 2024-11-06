import 'package:flutter/material.dart';

class BagimlilikVeDikkatDaginikligi extends StatelessWidget {
  const BagimlilikVeDikkatDaginikligi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bağımlılık Ve Dikkat Dağınıklığı",
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
              "Sosyal medya bağımlılığı, bireylerin sosyal medya platformlarına aşırı zaman ayırmasıdır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Bağımlılığın belirtileri ve etkileri:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Zaman Yönetimi Sorunları", Icons.access_time),
            const SizedBox(height: 10),
            _buildIkonluMetin("Dikkat Dağınıklığı", Icons.blur_on),
            const SizedBox(height: 10),
            _buildIkonluMetin("Gerçek İlişkilerde Zayıflama", Icons.people),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _buildOneriKart("Belirli sürelerde sosyal medyadan uzak durmak."),
            const SizedBox(height: 10),
            _buildOneriKart("Günlük kullanım süresini sınırlandırmak."),
            const SizedBox(height: 10),
            _buildOneriKart("Diğer hobiler ve etkinliklerle ilgilenmek."),
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
          child: Center(child: Text(text, style: const TextStyle(fontSize: 16))),
        ),
      ),
    );
  }
}
