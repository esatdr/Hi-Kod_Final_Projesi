import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/dijital_guvenlik.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/veri_mahremiyeti.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/yardim_destek.dart';

class Sayfa1 extends StatelessWidget {
  const Sayfa1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "            Dijital Zorbalık",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildAnaKonu("Dijital güvenlik, çevrimiçi varlığınızı korumanın temelidir.", Icons.security),
            const SizedBox(height: 20),
            _buildAnaKonu("Sosyal medya kullanırken dikkatli olun: Paylaşılan bilgiler ve arkadaşlık talepleri, veri güvenliğinizi tehdit edebilir.", Icons.warning),
            const SizedBox(height: 20),
            _buildAnaKonu("Siber zorbalık, çevrimiçi ortamlarda yaygın bir sorundur ve mağdurlar üzerinde ciddi etkiler bırakabilir.", Icons.accessibility_new),
            const SizedBox(height: 20),
            _buildAnaKonu("Dijital şiddet mağdurları için birçok destek mekanizması mevcuttur. Yardım almak önemlidir.", Icons.help_outline),

            const SizedBox(height: 10),
            _buildAltBaslikCard(context, "Dijital Güvenlik", "Dijital güvenliğin temel ilkeleri.", const DijitalGuvenlikEkrani()),
            const SizedBox(height: 10),
            _buildAltBaslikCard(context, "Veri Mahremiyeti", "Veri mahremiyeti, kişisel verilerinizin korunmasıdır.", const VeriMahremiyetiEkrani()),
            const SizedBox(height: 10),
            _buildAltBaslikCard(context, "Yardım ve Destek İletişim", "Bu tarz durumlarda ulaşabileceğiniz mecralar.", const YardimDestekEkrani()),
          ],
        ),
      ),
    );
  }

  Widget _buildAnaKonu(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }


  Widget _buildAltBaslikCard(BuildContext context, String title, String description, Widget ekran) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ekran,
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.lightBlue[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
