import 'package:flutter/material.dart';

class DijitalFarkindalik extends StatelessWidget {
  const DijitalFarkindalik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "        Dijital Farkındalık",
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
              "Dijital Farkındalık Nedir?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Dijital farkındalık, bireylerin çevrimiçi ortamlarda karşılaştıkları risklerin ve bu risklerle başa çıkma yollarının farkında olmalarını ifade eder. "
                  "Bu farkındalık, bireylerin dijital dünyada daha güvenli bir şekilde hareket etmelerini sağlamak için kritik öneme sahiptir.",
            ),
            const SizedBox(height: 10),
            const Text(
              "Dijital Dünyada Dikkat Edilmesi Gerekenler:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Kişisel bilgilerinizi paylaşmadan önce dikkatlice düşünün. Herhangi bir bilgi paylaşımının sonuçlarını değerlendirin."),
            _buildBilgilendirmeKart("Güvenilir olmayan kaynaklardan bilgi edinmekten kaçının. Bilgi doğruluğunu kontrol edin."),
            _buildBilgilendirmeKart("Sosyal medya etkileşimlerinizi yönetin ve dikkatli olun. Tanımadığınız kişilerle iletişim kurmaktan kaçının."),
            const SizedBox(height: 10),
            const Text(
              "Farkındalığı Artırma Yöntemleri:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Dijital farkındalık eğitimlerine katılmak. Bu tür eğitimler, güncel tehlikeler ve korunma yöntemleri hakkında bilgi sağlar."),
            _buildBilgilendirmeKart("Aile ve arkadaşlarınızı bu konuda bilgilendirmek. Paylaşılan bilgilerle toplumsal farkındalığı artırabilirsiniz."),
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
