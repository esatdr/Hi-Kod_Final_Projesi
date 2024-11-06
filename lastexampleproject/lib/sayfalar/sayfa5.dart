import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/dijital_zorbalik.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/psikolojik_etkiler.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/yardim_ve_destek.dart';

class Sayfa5 extends StatelessWidget {
  const Sayfa5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dijital Şiddet Ve Psikolojik Etkiler",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dijital şiddet, çevrimiçi platformlarda gerçekleştirilen zararlı davranışlardır.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital şiddetin etkileri ve önlenmesi hakkında daha fazla bilgi için aşağıdaki konulara göz atın:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Psikolojik Etkiler", Icons.psychology),
            const SizedBox(height: 10),
            _buildIkonluMetin("Dijital Zorbalık", Icons.report),
            const SizedBox(height: 10),
            _buildIkonluMetin("Yardım ve Destek", Icons.support),
            const SizedBox(height: 20),
            _buildKonular(context),
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

  Widget _buildKonular(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Alt Konular:", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Psikolojik Etkiler", "Dijital şiddetin psikolojik etkileri.", const PsikolojikEtkiler()), // Psikolojik etkiler kartı önce
        _buildKonuKart(context, "Dijital Zorbalık", "Dijital platformlarda zorbalık ve etkileri.", const DijitalZorbalik()), // Dijital Zorbalık kartı sonra
        _buildKonuKart(context, "Yardım ve Destek", "Dijital şiddete karşı yardım ve destek mekanizmaları.", const YardimVeDestek()), // Yardım ve destek kartı
      ],
    );
  }

  Widget _buildKonuKart(BuildContext context, String title, String description, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
