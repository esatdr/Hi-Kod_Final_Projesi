import 'package:flutter/material.dart';

class DestekArama extends StatelessWidget {
  const DestekArama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Destek Hatları",
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
              "Dijital Şiddet Durumunda Destek Alabileceğiniz Kaynaklar:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Aşağıdaki destek hatları ve kuruluşlardan dijital şiddet ve zorbalık konusunda destek alabilirsiniz.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            _buildContactTile(
              icon: Icons.phone,
              title: "Alo 183 Sosyal Destek Hattı",
              subtitle: "Telefon: 183\nWeb: https://alo183.aile.gov.tr",
            ),
            _buildContactTile(
              icon: Icons.phone,
              title: "BTK İnternet Yardım Hattı",
              subtitle: "Telefon: 120\nWeb: https://www.btk.gov.tr",
            ),
            _buildContactTile(
              icon: Icons.web,
              title: "Siber Suçlarla Mücadele (Emniyet)",
              subtitle: "Web: https://www.siberay.com.tr",
            ),
            _buildContactTile(
              icon: Icons.phone,
              title: "Şiddet Önleme ve İzleme Merkezleri (ŞÖNİM)",
              subtitle: "Telefon: 183",
            ),
            _buildContactTile(
              icon: Icons.email,
              title: "Çocuk ve Bilgi Güvenliği Derneği",
              subtitle: "E-posta: info@cocukkoruma.org\nWeb: https://www.cocukkoruma.org",
            ),
            _buildContactTile(
              icon: Icons.phone,
              title: "KADES (Kadın Destek Uygulaması)",
              subtitle: "Telefon: 112",
            ),
            _buildContactTile(
              icon: Icons.phone,
              title: "Yeşilay Danışma Hattı (YEDAM)",
              subtitle: "Telefon: 115\nWeb: https://www.yesilay.org.tr",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: ListTile(
        leading: Icon(icon, color: Colors.lightBlueAccent),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
