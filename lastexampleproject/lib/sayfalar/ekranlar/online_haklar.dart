import 'package:flutter/material.dart';

class OnlineHaklar extends StatelessWidget {
  const OnlineHaklar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "            Online Haklar",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildHakkCard(
              "Online haklar, bireylerin internet ortamında sahip olduğu yasal ve etik haklardır. Bu haklar, bireylerin dijital ortamda güvende hissetmelerini ve haklarına saygı gösterilmesini sağlar.",
              color: Color(0xFFB2EBF2),
            ),
            const SizedBox(height: 20),
            _buildHakkCard("Temel Online Haklar:", isBold: true),
            const SizedBox(height: 10),
            _buildHakkCard("1. Gizlilik Hakkı: Kişisel bilgilerinizi izinsiz paylaşılmamalıdır. İnternette paylaştığınız bilgiler, kişisel mahremiyetinizi etkileyebilir. Bu nedenle, gizlilik ayarlarınızı kontrol etmek ve kişisel bilgilerinizi dikkatlice paylaşmak önemlidir."),
            const SizedBox(height: 10),
            _buildHakkCard("2. Bilgiye Erişim Hakkı: İnternette doğru bilgiye ulaşma hakkınız vardır. Bilgiye erişim, demokratik bir toplumun temel taşlarından biridir. Herkesin bilgiye eşit erişim sağlaması gerekmektedir."),
            const SizedBox(height: 10),
            _buildHakkCard("3. İfade Özgürlüğü: Fikirlerinizi serbestçe ifade etme hakkına sahipsiniz. Ancak bu hak, başkalarının haklarına zarar vermemek koşuluyla geçerlidir. Saygılı bir iletişim ortamı sağlamak önemlidir."),
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
