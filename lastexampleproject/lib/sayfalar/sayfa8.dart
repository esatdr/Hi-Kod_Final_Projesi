import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/dijital_farkindalik.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/veri_guvenligi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/sifre_guvenligi.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/dikkatli_eposta_kullanimi.dart';

class Sayfa8 extends StatelessWidget {
  const Sayfa8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "  Dijital Ortamda Farkındalık",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(Icons.security, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Kişisel bilgi güvenliği, çevrimiçi varlığınızı korumanın temelidir.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: const [
                Icon(Icons.alarm, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Kendi şifrelerinizi oluştururken özellikle karmaşık bir yapı kullanmanız güvenliğiniz açısından büyük önem taşır.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: const [
                Icon(Icons.privacy_tip, color: Colors.green),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Kişisel bilgilerinizin güvende olması için veri mahremiyeti önemlidir.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: const [
                Icon(Icons.device_hub, color: Colors.orange),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Şifrelerinizi güvenli bir şekilde yönetmek, çevrimiçi güvenliğinizi artırır.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: const [
                Icon(Icons.people, color: Colors.purple),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Sosyal mühendislik saldırılarına karşı dikkatli olmak gereklidir.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            _buildBilgilendirmeCard(
              context,
              "Dijital Farkındalık",
              "Dijital dünyada dikkatli olmak, kişisel verilerinizi korumanıza yardımcı olur.",
              "Dijital farkındalık, internet üzerindeki her etkileşimde dikkatli olmayı gerektirir.",
              const DijitalFarkindalik(),
            ),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "Veri Güvenliği",
              "Kişisel verilerinizi paylaşmadan önce iki kez düşünün.",
              "Verilerinizi korumak, çevrimiçi kimliğinizi güvence altına almanın ilk adımıdır.",
              const VeriGuvenligi(),
            ),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "Şifre Güvenliği",
              "Güçlü şifreler, çevrimiçi hesaplarınızı korumak için şarttır.",
              "Şifrelerinizi düzenli olarak güncellemeyi unutmayın.",
              const SifreGuvenligi(),
            ),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "Dikkatli E-posta Kullanımı",
              "E-postalarınıza gelen şüpheli bağlantılara tıklamayın.",
              "Phishing saldırılarına karşı dikkatli olun.",
              const DikkatliEpostaKullanimi(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBilgilendirmeCard(
      BuildContext context, String title, String description, String detail, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
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

class BilgiEkrani extends StatelessWidget {
  final String title;
  final String detail;

  const BilgiEkrani({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          detail,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ),
    );
  }
}
