import 'package:flutter/material.dart';

class Sayfa9 extends StatelessWidget {
  const Sayfa9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sosyal Medyayı Bilinçli Kullanım",
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
              'Sosyal Medya Kullanımının Önemi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sosyal medya, bireyler arasında iletişim kurmayı ve bilgi paylaşmayı '
                  'kolaylaştıran önemli bir platformdur. Ancak, bu platformların bilinçli '
                  'bir şekilde kullanılması, olumsuz etkileri azaltma açısından kritik öneme sahiptir.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResearchSummaries()),
                );
              },
              child: _buildResearchCard("Bu Konuda Yapılan Bazı Araştırmalar"),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bilinçli Kullanımın Faydaları:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Kişisel bilgilerinizin güvenliğini sağlamış olursunuz."),
            _buildBilgilendirmeKart("Zamanınızı daha verimli bir şekilde yönetebilirsiniz."),
            _buildBilgilendirmeKart("Sosyal medyada olumsuz deneyimlerinizi azaltabilirsiniz."),
            const SizedBox(height: 20),
            const Text(
              'Dikkat Edilmesi Gerekenler:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Paylaşımlarınızı yaparken dikkatli olun; paylaşım sonrası silmek zordur."),
            _buildBilgilendirmeKart("Gerçek olmayan bilgilerden kaçının; kaynağı kontrol edin."),
            _buildBilgilendirmeKart("Olumsuz yorumlarla başa çıkma yöntemleri geliştirin."),
            const SizedBox(height: 20),
            const Text(
              'Sonuç',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Sosyal medyayı bilinçli kullanmak, kişisel güvenliğinizi artırır ve '
                  'sosyal medya deneyiminizi olumlu hale getirir.',
              style: TextStyle(fontSize: 16),
            ),
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
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(description, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  Widget _buildResearchCard(String title) {
    return Card(
      color: Color(0xFFB2EBF2), // Kart rengi
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sosyal medya üzerine yapılan araştırmaların özetlerine ulaşmak için buraya tıklayın.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ResearchSummaries extends StatelessWidget {
  const ResearchSummaries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Araştırma Özetleri'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sosyal Medya Üzerine Yapılan Araştırmalar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildResearchSummary("1. Anksiyete ve Depresyon: Aşırı sosyal medya kullanımının anksiyete ve depresyon ile ilişkili olduğu bulunmuştur (Twenge et al., 2018)."),
            _buildResearchSummary("2. Yüz Yüze İletişim: Sosyal medya, sosyal bağlantıları artırabilir ancak yüz yüze etkileşimlerin yerini tutamaz (Valkenburg & Peter, 2007)."),
            _buildResearchSummary("3. Bilgi Yalanları: Yanlış bilgilendirme ve yalan haberlerin sosyal medya üzerinden yayılma hızının arttığı gözlemlenmiştir (Vosoughi et al., 2018)."),
            _buildResearchSummary("4. Sosyal Bağlantılar: Sosyal medya platformlarının, kullanıcıların sosyal bağlantılarını genişlettiği belirlenmiştir (Ellison et al., 2007)."),
            _buildResearchSummary("5. Kendilik Algısı: Sosyal medya etkileşimlerinin, bireylerin kendilik algısını etkileyebileceği bulunmuştur (Vogel et al., 2014)."),
            _buildResearchSummary("6. Sosyal Medya ve Gençler: Gençlerin sosyal medya kullanımı ile sosyal kaygı düzeyleri arasında bir ilişki olduğu saptanmıştır (Rikkers et al., 2017)."),
            _buildResearchSummary("7. Hedefli Reklamlar: Sosyal medya kullanıcılarının hedefli reklamlara maruz kalma oranlarının arttığı ve bunun satın alma davranışlarını etkilediği görülmüştür (Lambrecht & Tucker, 2013)."),
            _buildResearchSummary("8. Online Zorbalık: Sosyal medya üzerinden gerçekleşen zorbalığın, genç bireyler üzerinde olumsuz etkileri olduğu bulunmuştur (Kowalski et al., 2014)."),
            _buildResearchSummary("9. Sosyal Medya Kullanımı ve Uyku: Gece sosyal medya kullanımı ile uyku kalitesi arasında negatif bir ilişki olduğu belirlenmiştir (Levenson et al., 2016)."),
            _buildResearchSummary("10. Empati Gelişimi: Sosyal medya kullanımının, empati gelişimi üzerinde olumlu etkileri olduğu ortaya konmuştur (Steinfield et al., 2008)."),
          ],
        ),
      ),
    );
  }

  Widget _buildResearchSummary(String summary) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(summary, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
