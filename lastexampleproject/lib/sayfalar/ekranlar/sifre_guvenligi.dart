import 'package:flutter/material.dart';

class SifreGuvenligi extends StatelessWidget {
  const SifreGuvenligi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "           Şifre Güvenliği",
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
              "Şifre Güvenliği Nedir?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Şifre güvenliği, çevrimiçi hesaplarınızın korunması için kritik öneme sahiptir. "
                  "Zayıf veya tahmin edilebilir şifreler, hesapların kolayca ele geçirilmesine yol açabilir. "
                  "Bu nedenle, güvenli bir şifre oluşturmak ve bunu yönetmek, siber güvenliğin temel unsurlarındandır. "
                  "Kötü niyetli kullanıcılar, kullanıcı adları ve şifreler gibi kimlik bilgilerini ele geçirmek için çeşitli teknikler kullanır. "
                  "Bu nedenle güçlü şifreler oluşturmak, kişisel verilerinizi korumanın ilk adımıdır.",
            ),
            const SizedBox(height: 10),
            const Text(
              "Güvenli Şifre Oluşturma Yöntemleri:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("En az 12 karakter uzunluğunda şifreler oluşturun. "
                "Uzun şifreler, daha fazla kombinasyon sunduğu için kırılması daha zordur. "
                "Şifre kırma yöntemleri genellikle sözlük saldırıları veya kaba kuvvet (brute-force) saldırılarıdır. "
                "Bu saldırılara karşı dayanıklı olabilmek için, şifrenizi karmaşık ve uzun tutmak kritik öneme sahiptir."),
            _buildBilgilendirmeKart("Büyük/küçük harf, rakam ve sembol kullanın. "
                "Şifrenizde büyük harf (A-Z), küçük harf (a-z), rakam (0-9) ve özel karakterler (!@#\$%^&*) kullanarak "
                "karakter çeşitliliğini artırın. Daha fazla karakter türü, şifrenizin tahmin edilmesini zorlaştırır ve "
                "şifre kırma sürelerini uzatır."),
            const SizedBox(height: 10),
            const Text(
              "Şifre Yönetimi için İpuçları:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Şifrelerinizi düzenli olarak güncelleyin. "
                "Kısa aralıklarla şifrelerinizi değiştirerek, özellikle güvenlik ihlali durumlarında hesap güvenliğinizi artırabilirsiniz. "
                "Ayrıca, hesaplarınızı kullanmıyorsanız, o hesaplara ait şifreleri de kaldırmak iyi bir uygulamadır."),
            _buildBilgilendirmeKart("Farklı hesaplar için farklı şifreler kullanın. "
                "Aynı şifreyi birden fazla hesapta kullanmak, bir hesabın ihlal edilmesi durumunda diğer hesapların da tehlikeye girmesine neden olabilir. "
                "Bir hesapta yaşanan bir güvenlik açığı, tüm şifrelerinizin ve dolayısıyla tüm hesaplarınızın güvenliğini tehdit eder."),
            const SizedBox(height: 10),
            const Text(
              "Şifre Yönetim Araçları:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Şifre yöneticisi kullanmayı düşünün. "
                "Şifre yöneticileri, karmaşık şifrelerinizi güvenli bir şekilde saklamanıza ve otomatik olarak doldurmanıza olanak tanır. "
                "Bu araçlar, her hesap için güçlü ve benzersiz şifreler oluşturmanıza yardımcı olur."),
            _buildBilgilendirmeKart("İki faktörlü kimlik doğrulama (2FA) kullanın. "
                "Şifre güvenliğinizi artırmak için 2FA uygulamaları (Google Authenticator, Authy gibi) kullanarak ikinci bir kimlik doğrulama katmanı ekleyin. "
                "Bu, hesabınıza giriş yaparken sadece şifrenizi değil, aynı zamanda telefonunuza gelen bir kodu da girmenizi gerektirir."),
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
