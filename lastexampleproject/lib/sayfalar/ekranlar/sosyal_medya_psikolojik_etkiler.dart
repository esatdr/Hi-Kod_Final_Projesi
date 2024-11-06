import 'package:flutter/material.dart';

class SosyalMedyaPsikolojikEtkiler extends StatelessWidget {
  const SosyalMedyaPsikolojikEtkiler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sosyal Medya Ruhsal Etkileri",
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
              "Sosyal medya, bireylerin psikolojik durumları üzerinde önemli etkiler yaratabilir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sosyal medyanın psikolojik etkileri şunlardır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Duygusal Durum: Sosyal medya kullanımı, bireylerin mutluluk ve tatmin düzeylerini etkileyebilir.", Icons.sentiment_satisfied),
            const SizedBox(height: 10),
            _buildIkonluMetin("Bağlantı İhtiyacı: Sosyal medya, yalnızlık hissini azaltabilir ancak aşırı kullanım, bağımlılığa yol açabilir.", Icons.link),
            const SizedBox(height: 10),
            _buildIkonluMetin("Özgüven: Sosyal medya üzerindeki etkileşimler, bireylerin özgüven seviyelerini artırabilir veya azaltabilir.", Icons.person),
            const SizedBox(height: 10),
            _buildIkonluMetin("Kaygı: Sosyal medya kullanımı, özellikle olumsuz yorumlar ve eleştiriler kaygıyı artırabilir.", Icons.warning),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Kalınlaştırıldı
            const SizedBox(height: 10),
            _buildOneriKart("Sosyal medya kullanımını düzenli hale getirmek."),
            const SizedBox(height: 10),
            _buildOneriKart("Olumsuz içeriklerden kaçınmak."),
            const SizedBox(height: 10),
            _buildOneriKart("Gerçek yaşamda bağlantılar kurmak."),
            const SizedBox(height: 10),
            _buildOneriKart("Dijital detoks yaparak sosyal medya kullanımını sınırlamak."),
            const SizedBox(height: 10),
            _buildOneriKart("Sosyal medyada geçirilen süreyi takip etmek."),
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
