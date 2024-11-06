import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/kisisel_bilgi_guvenligi.dart'; // Kişisel bilgi güvenliği dosyasını içe aktar
import 'package:lastexampleproject/sayfalar/ekranlar/sosyal_medya_etkisi.dart'; // Sosyal medya etkisi dosyasını içe aktar
import 'package:lastexampleproject/sayfalar/ekranlar/veri_izleme.dart'; // Veri izleme dosyasını içe aktar
import 'package:lastexampleproject/sayfalar/ekranlar/gizlilik_politikalari.dart'; // Gizlilik politikaları dosyasını içe aktar

class Sayfa4 extends StatelessWidget {
  const Sayfa4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "            Dijital Ayak İzi",
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
              "Dijital ayak izi, bireylerin çevrimiçi aktiviteleri sonucu oluşan izlerdir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital ayak izinin önemi ve etkileri hakkında daha fazla bilgi için aşağıdaki konulara göz atın:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Gizlilik Ayarları", Icons.privacy_tip),
            const SizedBox(height: 10),
            _buildIkonluMetin("Paylaşımların Etkisi", Icons.share),
            const SizedBox(height: 10),
            _buildIkonluMetin("İnternet Güvenliği", Icons.security),
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
        _buildKonuKart(context, "Kişisel Bilgi Güvenliği", "Kişisel bilgilerinizi çevrimiçi ortamlarda nasıl koruyabilirsiniz?", const KisiselBilgiGuvenligi()), // Kişisel bilgi güvenliği kartı
        const SizedBox(height: 10),
        _buildKonuKart(context, "Sosyal Medya Etkisi", "Sosyal medya kullanımının bireyler üzerindeki etkileri.", const SosyalMedyaEtkisi()), // Sosyal medya etkisi kartı
        const SizedBox(height: 10),
        _buildKonuKart(context, "Veri İzleme", "İnternetteki aktivitelerinizin izlenmesi hakkında bilgiler.", const VeriIzleme()), // Veri izleme kartı
        const SizedBox(height: 10),
        _buildKonuKart(context, "Gizlilik Politikaları", "Çevrimiçi platformlarda gizlilik politikalarının önemi.", const GizlilikPolitikalari()), // Gizlilik politikaları kartı
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
