import 'package:flutter/material.dart';

class SosyalMedyaEtkisi extends StatelessWidget {
  const SosyalMedyaEtkisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "       Sosyal Medya Etkisi",
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
              "Sosyal medya, bireylerin yaşamları üzerinde büyük bir etki yaratmaktadır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sosyal medya etkilerinin bazıları şunlardır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildEtkilerKart("İletişim Değişimi",
                "Sosyal medya sayesinde iletişim yöntemleri değişmiştir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Psikolojik Etkiler",
                "Sosyal medya kullanımı ruh hali üzerinde etkiler yaratabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Bağımlılık",
                "Aşırı sosyal medya kullanımı bağımlılığa yol açabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Kendilik Algısı",
                "Sosyal medya, bireylerin kendilik algısını etkileyebilir."),
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
