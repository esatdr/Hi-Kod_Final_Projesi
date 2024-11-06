import 'package:flutter/material.dart';

class Sayfa7 extends StatelessWidget {
  const Sayfa7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "   Yardım ve Destek Hatları",
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
              "Zorlayıcı dijital deneyimlerde başvurabileceğiniz mekanizmalar:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.help, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Profesyonel destek almak için danışabileceğiniz yardım hatları mevcuttur.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.phone_in_talk, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Yardım hatlarını arayarak ihtiyaç duyduğunuz desteği alabilirsiniz.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.support_agent, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Uzman kişilerle iletişime geçerek güvenliğiniz için önlemler alabilirsiniz.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Text(
              "Yardım ve Destek İçin Ulaşabileceğiniz Adresler:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 183 Sosyal Destek Hattı",
              "Aile, Çalışma ve Sosyal Hizmetler Bakanlığı'nın danışma hattı. 7/24 destek alabilirsiniz.",
              "Telefon: 183",
              "E-posta: info@aile.gov.tr",
              "Website: https://www.aile.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 182 Sağlık Bakanlığı Danışma Hattı",
              "Sağlık hizmetleri ile ilgili bilgi ve destek alabilirsiniz.",
              "Telefon: 182",
              "E-posta: iletisim@saglik.gov.tr",
              "Website: https://www.saglik.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 155 Polis İmdat",
              "Acil durumlarda polis yardımı almak için arayabilirsiniz.",
              "Telefon: 155",
              "E-posta: egm@egm.gov.tr",
              "Website: https://www.egm.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 156 Jandarma İmdat",
              "Kırsal alanlarda acil yardım için jandarmayı arayabilirsiniz.",
              "Telefon: 156",
              "E-posta: jandarma@jandarma.gov.tr",
              "Website: https://www.jandarma.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 112 Acil Yardım",
              "Acil sağlık durumlarında ambulans çağırabilirsiniz.",
              "Telefon: 112",
              "E-posta: 112acil@saglik.gov.tr",
              "Website: https://www.112.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "ALO 144 Sosyal Yardım Hattı",
              "Sosyal yardımlar ile ilgili bilgi almak için arayabilirsiniz.",
              "Telefon: 144",
              "E-posta: sosyal.yardim@aile.gov.tr",
              "Website: https://www.aile.gov.tr",
            ),
            const SizedBox(height: 10),
            _buildIletisimKart(
              "KADES Uygulaması",
              "Kadın Destek Uygulaması ile acil durumda polis ekiplerine konum bilginizi gönderebilirsiniz.",
              "E-posta: destek@kades.gov.tr",
              "Website: https://www.kades.gov.tr",
              "Telefon: 112",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIletisimKart(
      String title, String description, String contactInfo, String email, String website) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(description),
            const SizedBox(height: 5),
            Text(
              contactInfo,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 5),
            Text(
              email,
              style: const TextStyle(color: Colors.blueAccent),
            ),
            const SizedBox(height: 5),
            Text(
              website,
              style: const TextStyle(color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
