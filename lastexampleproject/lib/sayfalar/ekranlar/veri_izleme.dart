import 'package:flutter/material.dart';

class VeriIzleme extends StatelessWidget {
  const VeriIzleme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "              Veri İzleme",
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
              "Veri izleme, kullanıcıların çevrimiçi aktivitelerinin takip edilmesidir.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Veri izlemenin etkileri şunlardır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildEtkilerKart("Gizlilik İhlalleri", "Kişisel verilerin izinsiz kullanımı."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Güvenlik Riskleri", "Verilerin çalınması veya kötüye kullanılması."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Kullanıcı Profillemesi", "Kullanıcıların davranışları hakkında bilgi toplama."),
            const SizedBox(height: 5),
            _buildEtkilerKart("Hedefli Reklamcılık", "Kullanıcıların ilgi alanlarına göre reklam gösterme."),
          ],
        ),
      ),
    );
  }

  Widget _buildEtkilerKart(String title, String description) {
    return Card(
      color: Colors.blue[50],
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 5),
            Text(description, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
