import 'package:flutter/material.dart';

class EtikKullanimi extends StatelessWidget {
  const EtikKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "            Etik Kullanım",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEtikCard(
              "Etik kullanım, internet ortamında saygılı ve sorumlu bir davranış sergilemektir. İnternetteki iletişimde etik kurallarına uymak, sağlıklı bir dijital ortamın oluşmasına katkıda bulunur.",
              color: Color(0xFFB2EBF2),
            ),
            const SizedBox(height: 20),
            _buildEtikCard("Etik Kullanım İlkeleri:", isBold: true),
            const SizedBox(height: 10),
            _buildEtikCard("1. Saygılı Olun: Diğer kullanıcıların görüşlerine saygı gösterin. Farklı görüşlere açık olmak, yapıcı bir iletişim sağlar."),
            const SizedBox(height: 10),
            _buildEtikCard("2. Bilgileri Doğru Paylaşın: Yanlış veya yanıltıcı bilgi paylaşımından kaçının. Doğru bilgi, sağlıklı bir iletişim için temel gerekliliktir."),
            const SizedBox(height: 10),
            _buildEtikCard("3. Kötü Niyetli Davranışlardan Kaçının: Dijital ortamda başkalarına zarar vermekten kaçının. Kötü niyetli davranışlar, toplumda güvensizlik yaratır."),
          ],
        ),
      ),
    );
  }

  Widget _buildEtikCard(String description, {bool isBold = false, Color? color}) {
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
