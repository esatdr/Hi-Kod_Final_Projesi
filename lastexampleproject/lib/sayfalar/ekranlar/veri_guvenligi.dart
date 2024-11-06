import 'package:flutter/material.dart';

class VeriGuvenligi extends StatelessWidget {
  const VeriGuvenligi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Veri Güvenliği",
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
              "Veri Güvenliği Nedir?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Veri güvenliği, kişisel ve hassas verilerin korunması amacıyla alınan önlemleri içerir. "
                  "Bu güvenlik, bireylerin dijital dünyada daha güvende hissetmelerini sağlamak için önemlidir. "
                  "Veri güvenliği, yetkisiz erişimi, veri kaybını ve verinin kötüye kullanılmasını önlemeye yönelik stratejilerle gerçekleştirilir.",
            ),
            const SizedBox(height: 10),
            const Text(
              "Veri Güvenliği için Dikkat Edilmesi Gerekenler:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Verilerinizi şifreleyerek koruyun. Şifreleme, verilerin okunabilirliğini azaltarak izinsiz erişimi engeller. "
                "Şifrelenmiş veriler yalnızca yetkili kullanıcılar tarafından erişilebilir, bu da veri ihlallerinin önlenmesine yardımcı olur."),
            _buildBilgilendirmeKart("Güvenli şifreler kullanın ve düzenli olarak değiştirin. Karmaşık şifreler, hesap güvenliğinizi artırır. "
                "Karmaşık bir şifre, büyük ve küçük harfler, sayılar ve özel karakterler içermelidir. Şifrelerinizi belirli aralıklarla güncelleyerek, siber saldırılara karşı korunmayı artırabilirsiniz."),
            const SizedBox(height: 10),
            const Text(
              "Güvenlik Önlemleri:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Düzenli olarak veri yedeklemesi yapın. Yedekleme, verilerin kaybolması durumunda geri kazanım sağlar. "
                "Veri kaybı, donanım arızaları veya siber saldırılar nedeniyle gerçekleşebilir, bu nedenle verilerinizi bulut gibi güvenli bir ortamda yedeklemek önemlidir."),
            _buildBilgilendirmeKart("Güvenilir antivirüs yazılımları kullanın. Antivirüs yazılımları, kötü amaçlı yazılımlara karşı koruma sağlar. "
                "Bu yazılımlar, bilgisayarınıza veya mobil cihazınıza bulaşabilecek virüsleri, truva atlarını ve diğer zararlı yazılımları tespit eder ve engeller."),
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
