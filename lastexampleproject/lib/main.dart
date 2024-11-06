import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'sayfalar/sayfa1.dart';
import 'sayfalar/sayfa2.dart';
import 'sayfalar/sayfa3.dart';
import 'sayfalar/sayfa4.dart';
import 'sayfalar/sayfa5.dart';
import 'sayfalar/sayfa6.dart';
import 'sayfalar/sayfa7.dart';
import 'sayfalar/sayfa8.dart';
import 'sayfalar/sayfa9.dart';
import 'sayfalar/sayfa10.dart';
import 'sayfalar/ekranlar/dijital_guvenlik.dart';
import 'sayfalar/ekranlar/veri_mahremiyeti.dart';
import 'sayfalar/ekranlar/yardim_destek.dart';
import 'sayfalar/ekranlar/sosyal_medya_psikolojik_etkiler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dijital Farkındalık',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text(
            'Dijital Farkındalık',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue[100]!, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              final kartlar = [
                {
                  'title': 'Dijital Zorbalık',
                  'page': Sayfa1(),
                  'image': 'assets/images/DigitalBullying.jpg',
                  'color': Colors.blue[100]
                },
                {
                  'title': 'Kişisel Bilgi Güvenliği',
                  'page': Sayfa2(),
                  'image': 'assets/images/PersonalInformationSec.jpg',
                  'color': Colors.blue[100]
                },
                {
                  'title': 'Sosyal Medyanın Hayatımızdaki Etkileri',
                  'page': Sayfa3(),
                  'image': 'assets/images/SocialMedia.jpg',
                  'color': Colors.lightBlue[100]
                },
                {
                  'title': 'Dijital Ayak İzi',
                  'page': Sayfa4(),
                  'image': 'assets/images/DigitalFootPrint.jpg',
                  'color': Colors.lightBlue[100]
                },
                {
                  'title': 'Dijital Şiddet Ve Psikolojik Etkiler',
                  'page': Sayfa5(),
                  'image': 'assets/images/DijitalSiddet.jpg',
                  'color': Colors.lightBlue[100]
                },
                {
                  'title': 'Dijital Şiddeti Önleme Yöntemleri',
                  'page': Sayfa6(),
                  'image': 'assets/images/cyber-getty.jpg',
                  'color': Colors.lightBlue[100]
                },
                {
                  'title': 'Yardım Ve Destek Mekanizmaları',
                  'page': Sayfa7(),
                  'image': 'assets/images/YardimMekanizmalari.jpg',
                  'color': Colors.lightBlueAccent[100]
                },
                {
                  'title': 'Dijital Farkındalık',
                  'page': Sayfa8(),
                  'image': 'assets/images/dijitalfarkindalik.jpg',
                  'color': Colors.lightBlueAccent[100]
                },
                {
                  'title': 'Sosyal Medyayı Bilinçli Kullanım',
                  'page': Sayfa9(),
                  'image': 'assets/images/BilincliKullanim.jpg',
                  'color': Colors.lightBlueAccent[100]
                },
                {
                  'title': 'Sanal Alemde Davranış Kuralları',
                  'page': Sayfa10(),
                  'image': 'assets/images/davraniskurallari.jpg',
                  'color': Colors.lightBlueAccent[100]
                },
              ];

              return _buildCard(
                context,
                kartlar[index]['title'] as String,
                kartlar[index]['page'] as Widget,
                kartlar[index]['image'] as String,
                kartlar[index]['color'] as Color?,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, Widget page, String imagePath, Color? color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
