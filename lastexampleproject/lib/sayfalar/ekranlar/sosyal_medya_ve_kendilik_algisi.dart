import 'package:flutter/material.dart';

class SosyalMedyaVeKendilikAlgisi extends StatelessWidget {
  const SosyalMedyaVeKendilikAlgisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sosyal Medya Ve Kendilik Algısı",
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
              "Sosyal medya, bireylerin kendilik algısını önemli ölçüde etkileyebilir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Kendilik algısını etkileyen faktörler:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Sosyal Karşılaştırma", Icons.compare_arrows),
            const SizedBox(height: 10),
            _buildIkonluMetin("Beğenilme İhtiyacı", Icons.thumb_up),
            const SizedBox(height: 10),
            _buildIkonluMetin("Dış Görüşe Verilen Önem", Icons.visibility),
            const SizedBox(height: 20),
            const Text("Öneriler:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Kalınlaştırıldı
            const SizedBox(height: 10),
            _buildOneriKart("Gerçek hayat ilişkilerine odaklanmak."),
            const SizedBox(height: 10),
            _buildOneriKart("Kendinizi sosyal medyadaki yansımalarınıza göre değerlendirmemek."),
            const SizedBox(height: 10),
            _buildOneriKart("Kendinizle barışık olmayı öğrenmek."),
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
