import 'package:flutter/material.dart';

class SiberZorbalik extends StatelessWidget {
  const SiberZorbalik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "     Siber Zorbalığın Türleri",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildHakkCard(
              "Siber zorbalık, dijital ortamda gerçekleşen bir saldırı türüdür. Farklı şekillerde ortaya çıkabilir ve bireylerin psikolojik sağlığı üzerinde ciddi etkiler yaratabilir.",
              color: Color(0xFFB2EBF2),
            ),
            const SizedBox(height: 20),
            _buildHakkCard("Siber Zorbalığın Türleri:", isBold: true),
            const SizedBox(height: 10),
            _buildHakkCard("1. Dışlama: Bireylerin sosyal ortamlardan veya çevrimiçi topluluklardan dışlanması."),
            const SizedBox(height: 10),
            _buildHakkCard("2. Ahlaka aykırı içerik paylaşma: Bir kişiye zarar vermek amacıyla yanlış veya iftira niteliğindeki içeriklerin paylaşılması."),
            const SizedBox(height: 10),
            _buildHakkCard("3. Tehdit: Kişiyi korkutma veya zarar verme amacıyla yapılan açık veya örtük tehditler."),
            const SizedBox(height: 10),
            _buildHakkCard("4. Sahte kimlik kullanma: Başka bir kişinin kimliğini taklit ederek onu zor durumda bırakma."),
            const SizedBox(height: 10),
            _buildHakkCard("5. Taciz: Sürekli olarak bireyi rahatsız etme veya onunla alay etme eylemleri."),
          ],
        ),
      ),
    );
  }

  Widget _buildHakkCard(String description, {bool isBold = false, Color? color}) {
    return Card(
      elevation: 5,
      color: color ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
