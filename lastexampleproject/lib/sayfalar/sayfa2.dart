import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sayfa2(),
  ));
}

class Sayfa2 extends StatelessWidget {
  const Sayfa2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "      Kişisel Bilgi Güvenliği",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [

            Center(
              child: Image.asset(
                "assets/images/SifreYonetimi.jpeg",
                width: 300,
              ),
            ),
            const SizedBox(height: 20),

            _buildBilgilendirmeCard(
              context,
              "Şifre Yönetimi",
              "Güçlü şifreler kullanmak çevrimiçi güvenliğinizi artırır.",
              [
                "Uzun ve karmaşık şifreler kullanın.",
                "Şifrelerinizi düzenli olarak değiştirin.",
                "Aynı şifreyi birden fazla yerde kullanmayın.",
                "Şifre yöneticisi kullanmayı düşünün.",
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "Veri Paylaşımı",
              "Kişisel bilgilerinizi paylaşırken dikkatli olun.",
              [
                "Sadece güvenilir kaynaklarla paylaşım yapmalısınız.",
                "Paylaşım yapmadan önce iki kez düşünün.",
                "Kişisel bilgilerinizi gizli tutun.",
                "Hedefli saldırılara karşı tetikte olun.",
              ],
            ),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "Güvenli Bağlantılar",
              "Güvenli bağlantılar kullanmak önemlidir.",
              [
                "HTTPS bağlantıları üzerinden işlem yapın.",
                "Güvenli ağlarda kalmaya özen gösterin.",
                "Tanımadığınız ağlara bağlanmaktan kaçının.",
                "Ağ ayarlarınızı kontrol edin.",
              ],
            ),
            const SizedBox(height: 10),
            _buildBilgilendirmeCard(
              context,
              "E-posta Güvenliği",
              "E-posta hesaplarınızı korumak için iki faktörlü kimlik doğrulama kullanın.",
              [
                "Phishing saldırılarına karşı dikkatli olun.",
                "E-postalarınızı düzenli olarak kontrol edin.",
                "Güvenilir olmayan ekleri açmayın.",
                "Şifrenizi güçlü tutun.",
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBilgilendirmeCard(
      BuildContext context, String title, String description, List<String> details) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BilgilendirmeSayfasi(
              title: title,
              description: description,
              details: details,
            ),
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

class BilgilendirmeSayfasi extends StatelessWidget {
  final String title;
  final String description;
  final List<String> details;

  const BilgilendirmeSayfasi({
    Key? key,
    required this.title,
    required this.description,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              "Detaylar:",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        details[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
