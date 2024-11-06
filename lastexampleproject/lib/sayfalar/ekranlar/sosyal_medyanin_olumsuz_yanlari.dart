import 'package:flutter/material.dart';

class SosyalMedyaOlumsuzluklari extends StatelessWidget {
  const SosyalMedyaOlumsuzluklari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sosyal Medya Olumsuzlukları",
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
              "Sosyal medya kullanımının bazı olumsuz etkileri bulunmaktadır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sosyal medya olumsuz etkileri:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Sosyal İzolasyon", Icons.block),
            const SizedBox(height: 10),
            _buildIkonluMetin("Siber Zorbalık", Icons.warning),
            const SizedBox(height: 10),
            _buildIkonluMetin("Yanlış Bilgi Yayılımı", Icons.error),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            _buildOneriKart("Sosyal medya kullanımını sınırlayın."),
            const SizedBox(height: 10),
            _buildOneriKart("Güvenilir kaynaklardan bilgi edinmeye özen gösterin."),
            const SizedBox(height: 10),
            _buildOneriKart("Siber zorbalığa maruz kalıyorsanız, durumu yetkililere bildirin."),
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
