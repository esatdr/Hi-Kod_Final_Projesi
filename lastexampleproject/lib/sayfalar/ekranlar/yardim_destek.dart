import 'package:flutter/material.dart';

class YardimDestekEkrani extends StatelessWidget {
  const YardimDestekEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "         Yardım Ve Destek",
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
              "Yardım ve destek için iletişim kurabileceğiniz yerler:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildIletisimHatlari(
                "Acil Yardım Hattı",
                "112 - Her türlü acil durumda arayabilirsiniz.",
                Icons.phone,
                "info@acilyardim.gov.tr",
                "www.acilyardim.gov.tr"
            ),
            const SizedBox(height: 10),
            _buildIletisimHatlari(
                "Siber Suçlarla Mücadele",
                "Siber zorbalık ve dolandırıcılık bildirimleri için 155'i arayın.",
                Icons.security,
                "siber@emniyet.gov.tr",
                "www.siber.gov.tr"
            ),
            const SizedBox(height: 10),
            _buildIletisimHatlari(
                "Psikolojik Destek Hattı",
                "Ücretsiz psikolojik destek almak için 182'yi arayın.",
                Icons.support,
                "destek@psikoloji.gov.tr",
                "www.psikolojidestek.gov.tr"
            ),
            const SizedBox(height: 10),
            _buildIletisimHatlari(
                "Sosyal Destek Merkezi",
                "Toplumsal destek ve yardım bilgileri için 144'ü arayın.",
                Icons.people,
                "sosyal@destek.gov.tr",
                "www.sosyaldestek.gov.tr"
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIletisimHatlari(String title, String description, IconData icon, String email, String website) {
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
            Row(
              children: [
                Icon(icon, color: Colors.blue),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(description),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 20, thickness: 1),
            Row(
              children: [
                const Icon(Icons.email, color: Colors.blue),
                const SizedBox(width: 10),
                Text("E-posta: $email"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.web, color: Colors.blue),
                const SizedBox(width: 10),
                Text("Web: $website"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
