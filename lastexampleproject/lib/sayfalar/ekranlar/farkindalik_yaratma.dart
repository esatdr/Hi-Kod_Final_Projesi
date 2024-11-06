import 'package:flutter/material.dart';

class FarkindalikYaratma extends StatelessWidget {
  const FarkindalikYaratma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dijital Şiddette Farkındalık",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dijital Şiddette Farkındalık Yaratma",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Dijital Şiddet Nedir?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital şiddet, bireylerin dijital ortamda diğer bireylere zarar vermek amacıyla gerçekleştirdiği davranışlardır.",
            ),
            const SizedBox(height: 10),
            const Text(
              "Belirtileri Tanıma:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Küçümseyici veya aşağılayıcı mesajlar almak."),
            _buildBilgilendirmeKart("Sosyal medya üzerinden tehditler veya şiddet içeren içerikler."),
            _buildBilgilendirmeKart("Hesapların izinsiz ele geçirilmesi veya kötüye kullanılması."),
            _buildBilgilendirmeKart("Çevrimiçi platformlarda sürekli rahatsız edici davranışlarla karşılaşmak."),
            const SizedBox(height: 10),
            const Text(
              "Dijital Şiddetin Etkileri:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Dijital şiddet mağdurları üzerinde ciddi psikolojik etkiler bırakabilir."),
            const SizedBox(height: 10),
            const Text(
              "Farkındalık Artırma Yöntemleri:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Okullarda ve topluluklarda dijital şiddetle ilgili farkındalık etkinlikleri düzenlemek."),
            _buildBilgilendirmeKart("Sosyal medya ve diğer platformlarda dijital şiddetle ilgili bilgilendirici içerikler paylaşmak."),
            _buildBilgilendirmeKart("Aileleri ve öğretmenleri bilgilendirerek, gençlerin güvenli bir çevrimiçi deneyim yaşamalarını sağlamak."),
            const SizedBox(height: 10),
            const Text(
              "Kaynaklar ve Destek:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Dijital şiddetle ilgili bilgilere ulaşmak için güvenilir web siteleri ve kuruluşların kaynaklarından faydalanmak."),
            _buildBilgilendirmeKart("Dijital şiddete maruz kalan bireylerin destek alabileceği sıcak hatlar veya danışma merkezleri hakkında bilgi edinmek."),
          ],
        ),
      ),
    );
  }

  Widget _buildBilgilendirmeKart(String description) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(description),
      ),
    );
  }
}
