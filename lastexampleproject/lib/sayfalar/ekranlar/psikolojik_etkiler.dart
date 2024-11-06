import 'package:flutter/material.dart';

class PsikolojikEtkiler extends StatelessWidget {
  const PsikolojikEtkiler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "          Psikolojik Etkiler",
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
              "Dijital şiddet, bireyler üzerinde çeşitli psikolojik etkiler yaratabilir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Bu etkiler arasında şunlar yer alabilir:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildEtkilerKart("Anksiyete",
                "Bireylerde kaygı ve stres artabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Depresyon",
                "Uzun süreli maruziyet depresyona neden olabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Düşük Özsaygı",
                "Bireylerin kendine güveni sarsılabilir."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Yalnızlık",
                "Dijital zorbalığa maruz kalan bireyler sosyal ilişkilerinde zorluk yaşayabilir."),
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
