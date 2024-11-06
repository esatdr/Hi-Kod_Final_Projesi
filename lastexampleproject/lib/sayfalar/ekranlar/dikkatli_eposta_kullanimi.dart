import 'package:flutter/material.dart';

class DikkatliEpostaKullanimi extends StatelessWidget {
  const DikkatliEpostaKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dikkatli E-posta Kullanımı",
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
              "Dikkatli E-posta Kullanımı Nedir?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Dikkatli e-posta kullanımı, çevrimiçi dolandırıcılıklara karşı korunma yöntemlerini içerir. "
                  "E-posta, iletişimde yaygın bir araçtır ancak aynı zamanda dolandırıcılık ve saldırılar için de "
                  "kullanılabilir. Phishing (oltalama) gibi saldırılar, kullanıcıların kimlik bilgilerini çalmak için "
                  "kullanılan yaygın bir tekniktir. Bu nedenle, dikkatli e-posta kullanımı, siber güvenliğin önemli "
                  "bir parçasıdır.",
            ),
            const SizedBox(height: 10),
            const Text(
              "E-posta Güvenliği için Dikkat Edilmesi Gerekenler:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Gelen kutunuzdaki şüpheli bağlantılara tıklamayın. "
                "E-postalardaki bağlantıların sahte web sitelerine yönlendirebileceğini unutmayın. "
                "Herhangi bir şüphe durumunda, bağlantıyı tarayıcınıza manuel olarak yazın."),
            _buildBilgilendirmeKart("Tanımadığınız kişilerden gelen e-postalara yanıt vermeyin. "
                "Bilinmeyen bir kaynaktan gelen e-postalar genellikle dolandırıcılık amaçlıdır. "
                "E-posta adresini dikkatlice kontrol edin ve şüpheli bulduğunuz durumlarda yanıt vermekten kaçının."),
            const SizedBox(height: 10),
            const Text(
              "E-posta Dolandırıcılıklarına Karşı Önlemler:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("E-posta doğrulama yöntemlerini kullanın. "
                "E-posta sağlayıcınızın sunduğu iki faktörlü kimlik doğrulama (2FA) gibi güvenlik önlemlerini etkinleştirin. "
                "Bu, hesabınıza erişimi daha güvenli hale getirecektir."),
            _buildBilgilendirmeKart("E-posta ayarlarınızı güvenli hale getirin. "
                "Şifrelerinizi düzenli olarak değiştirin ve güçlü şifreler kullanın. Ayrıca, e-posta hesabınızda "
                "güvenlik soruları ve kurtarma e-posta adresi ayarlayarak hesabınızı koruyun."),
            const SizedBox(height: 10),
            const Text(
              "Phishing Saldırıları ve Örnekler:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildBilgilendirmeKart("Phishing (Oltalama) Saldırıları: "
                "Dolandırıcılar, genellikle bankalar veya popüler sosyal medya siteleri gibi güvenilir kaynaklardan "
                "gelen gibi görünen sahte e-postalar gönderirler. Bu e-postalarda genellikle, kullanıcıların "
                "kendi hesap bilgilerini (şifreler, kredi kartı bilgileri vb.) girmeleri için sahte bir web "
                "sitesine yönlendiren bağlantılar bulunur."),
            _buildBilgilendirmeKart("Spoofing: "
                "Bu tür saldırılarda, saldırganın e-posta adresi, tanıdığınız birinin adresine benzeyecek şekilde "
                "değiştirilir. Bu nedenle, tanıdığınız bir kişiden geldiği izlenimi yaratır. E-postada talimatlar "
                "veya bağlantılar varsa dikkatli olun."),
            _buildBilgilendirmeKart("E-posta Ekleri: "
                "Dolandırıcılar, zararlı yazılım içeren ek dosyalar gönderebilir. Tanımadığınız kişilerden gelen "
                "ekleri açmamaya özen gösterin. Bu tür ekler, bilgisayarınıza virüs veya diğer kötü amaçlı yazılımlar "
                "yükleyebilir."),
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
