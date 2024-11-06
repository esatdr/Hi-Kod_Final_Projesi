import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YardimVeDestek extends StatelessWidget {
  const YardimVeDestek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "        Yardım Ve Destek",
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
              "Dijital şiddete karşı yardım ve destek almak mümkündür.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Aşağıda destek alabileceğiniz kaynaklar bulunmaktadır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildYardimKaynagiCard("Türkiye: ALO 183", "https://www.alo183.gov.tr"),
            const SizedBox(height: 10),
            _buildYardimKaynagiCard("Türkiye: Kadın Destek Hattı", "https://www.kadin.gov.tr"),
            const SizedBox(height: 10),
            _buildYardimKaynagiCard("Türkiye: 112 Acil Çağrı", "tel:112"),
            const SizedBox(height: 10),
            _buildYardimKaynagiCard("Dünya: Befrienders Worldwide", "https://www.befrienders.org"),
            const SizedBox(height: 10),
            _buildYardimKaynagiCard("Dünya: Suicide.org", "https://www.suicide.org"),
          ],
        ),
      ),
    );
  }

  Widget _buildYardimKaynagiCard(String title, String url) {
    return GestureDetector(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
