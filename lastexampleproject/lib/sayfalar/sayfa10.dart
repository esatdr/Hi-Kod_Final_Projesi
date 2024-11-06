import 'package:flutter/material.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/online_haklar.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/siber_zorbalik.dart';
import 'package:lastexampleproject/sayfalar/ekranlar/etik_kullanım.dart';

class Sayfa10 extends StatelessWidget {
  const Sayfa10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sanal Dünya Davranış Kuralları",
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
              "Sanal alemde davranış kuralları, çevrimiçi platformlarda etik ve saygılı bir iletişim sağlamak için gereklidir.",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sanal Alemde Davranış Kuralları: ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildIkonluMetin("Saygılı İletişim", Icons.people),
            const SizedBox(height: 10),
            _buildIkonluMetin("Kişisel Bilgilerin Korunması", Icons.lock),
            const SizedBox(height: 10),
            _buildIkonluMetin("Kötü Niyetli Davranışlardan Kaçınma", Icons.warning),
            const SizedBox(height: 20),
            _buildKonular(context),
          ],
        ),
      ),
    );
  }

  Widget _buildIkonluMetin(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 10),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildKonular(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("İlgili Konular:", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Online Haklar", "Çevrimiçi ortamda sahip olduğunuz haklar ve bunların korunması.", const OnlineHaklar()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Siber Zorbalık", "Siber zorbalığın etkileri ve önlenmesi hakkında bilgiler.", const SiberZorbalik()),
        const SizedBox(height: 10),
        _buildKonuKart(context, "Etik Kullanım", "Çevrimiçi ortamlarda etik davranışlar ve sorumluluklar.", const EtikKullanimi()),
      ],
    );
  }

  Widget _buildKonuKart(BuildContext context, String title, String description, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
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
