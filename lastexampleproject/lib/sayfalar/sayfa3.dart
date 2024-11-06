import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medya_psikolojik_etkiler.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/bagimlilik_ve_dikkat_daginikligi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medya_ve_kendilik_algisi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medya_iletisimi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medya_ve_bilgi_guvenligi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medyanin_olumsuz_yanlari.dart';

class Sayfa3 extends StatelessWidget {
  const Sayfa3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "      Sosyal Medya Etkileri",
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
              "Sosyal medya, bireylerin yaşamlarını ve ilişkilerini önemli ölçüde etkiler.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sosyal medyanın etkilerini anlamak için aşağıdaki konulara göz atın:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Psikolojik Etkiler", Icons.emoji_emotions),
            const SizedBox(height: 10),
            _buildIkonluMetin("Bağımlılık", Icons.lock),
            const SizedBox(height: 10),
            _buildIkonluMetin("Kendilik Algısı", Icons.account_circle),
            const SizedBox(height: 10),
            _buildIkonluMetin("İletişim", Icons.chat),
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
        _buildKonuKart(context, "Sosyal Medya ve Psikolojik Etkileri", "Sosyal medya kullanımının bireylerin ruh hali üzerindeki etkileri.", SosyalMedyaPsikolojikEtkiler()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Bağımlılık ve Dikkat Dağınıklığı", "Sosyal medya bağımlılığı ve bunun dikkat dağınıklığı üzerindeki etkileri.", BagimlilikVeDikkatDaginikligi()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Sosyal Medya ve Kendilik Algısı", "Sosyal medyanın bireylerin kendilik algısı üzerindeki etkisi.", SosyalMedyaVeKendilikAlgisi()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Sosyal Medya İletişimi", "Sosyal medya aracılığıyla iletişimin değişimi ve etkileri.", SosyalMedyaIletisimi()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Sosyal Medya ve Bilgi Güvenliği", "Sosyal medya kullanırken dikkat edilmesi gereken gizlilik ve güvenlik önlemleri.", SosyalMedyaVeBilgiGuvenligi()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Sosyal Medya Olumsuzlukları", "Sosyal medya üzerinden maruz kalınan olumsuz durumlar.", SosyalMedyaOlumsuzluklari()),
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
