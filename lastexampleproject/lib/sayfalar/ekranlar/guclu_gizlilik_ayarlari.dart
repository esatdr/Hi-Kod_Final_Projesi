import 'package:flutter/material.dart';

class GucluGizlilikAyarlari extends StatelessWidget {
const GucluGizlilikAyarlari({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  title: const Text(
    "    Güçlü Gizlilik Ayarları",
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
        "Dijital dünyada güvenliğinizi sağlamak için gizlilik ayarlarınızı güçlendirmek hayati öneme sahiptir. İşte bu konuda dikkate almanız gereken bazı ipuçları:",
  style: TextStyle(fontSize: 16),
  ),
    const SizedBox(height: 10),
    _buildMadde("Hesap Güvenliği",
    "Tüm hesaplarınız için güçlü, tahmin edilmesi zor parolalar kullanın. Parola yöneticileri bu konuda yardımcı olabilir."),
    const SizedBox(height: 10),
    _buildMadde("İki Aşamalı Doğrulama",
    "Mümkünse, iki aşamalı doğrulama (2FA) özelliğini etkinleştirin. Bu, hesabınıza giriş yaparken ek bir güvenlik katmanı sağlar."),
    const SizedBox(height: 10),
    _buildMadde("Paylaşılan Bilgileri Kontrol Edin",
    "Sosyal medya hesaplarınızda paylaştığınız bilgileri gözden geçirin. Hangi bilgilerin herkese açık olduğunu ve hangi bilgilerin yalnızca arkadaşlarınızla paylaşıldığını kontrol edin."),
    const SizedBox(height: 10),
    _buildMadde("Konum Bilgisi",
    "Uygulamalara konum bilgilerinizi paylaşma izni verirken dikkatli olun. Konumunuzu paylaştığınızda, bu bilgiler başkalarının erişimine açılmış olur."),
    const SizedBox(height: 10),
    _buildMadde("Uygulama İzinlerini Gözden Geçirin",
    "Yüklediğiniz uygulamaların hangi verilere erişim izni olduğunu kontrol edin. Gereksiz izinler vermekten kaçının ve kullanılmayan uygulamaları silin."),
       ],
      ),
     ),
    );
}

Widget _buildMadde(String title, String description) {
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
Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
const SizedBox(height: 5),
Text(description),
],
),
),
);
}
}
