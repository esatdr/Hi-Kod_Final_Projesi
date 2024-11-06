import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/farkindalik_yaratma.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/guclu_gizlilik_ayarlari.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/engelleme_secenekleri.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/destek_arama.dart';

class Sayfa6 extends StatelessWidget {
  const Sayfa6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "     Dijital Şiddeti Önleme",
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
              "Dijital şiddeti önlemek için uygulayabileceğiniz yöntemler şunlardır:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Row(
              children: const [
                Icon(Icons.visibility, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Çevrim içi ortamda şiddet belirtilerini tanıyın.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.support, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Güvendiğiniz kişilere başvurmaktan çekinmeyin.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.report, color: Colors.blueAccent),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Güvenlik önlemlerini alın ve zorbalıkları raporlayın.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            const Text(
              "Aşağıdaki kartlarda dijital şiddeti önlemek için bazı ipuçları yer almaktadır.:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            _buildYontemKart(
              context,
              "Farkındalık Yaratma",
              "Dijital şiddet konusunda farkındalığı artırmak önemlidir.",
              const FarkindalikYaratma(),
            ),
            const SizedBox(height: 10),
            _buildYontemKart(
              context,
              "Güçlü Gizlilik Ayarları",
              "Sosyal medya ve diğer platformlardaki gizlilik ayarlarını güçlendirin.",
              const GucluGizlilikAyarlari(),
            ),
            const SizedBox(height: 10),
            _buildYontemKart(
              context,
              "Engelleme Seçenekleri",
              "Zorbalık yapan kişileri engelleyin veya raporlayın.",
              const EngellemeSecenekleri(),
            ),
            const SizedBox(height: 10),
            _buildYontemKart(
              context,
              "Destek Hatları",
              "Bu tür durumlarla karşılaştığınızda destek aramaktan çekinmeyin.",
              const DestekArama(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildYontemKart(BuildContext context, String title, String description, Widget targetPage) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
