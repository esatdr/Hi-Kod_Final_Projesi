import 'package:flutter/material.dart';

class EngellemeSecenekleri extends StatelessWidget {
  const EngellemeSecenekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Engelleme Seçenekleri",
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
              "Dijital şiddetle karşılaştığınızda, zorbalık yapan kişileri engellemek önemli bir adımdır. Bu süreçte dikkate almanız gereken bazı noktalar şunlardır:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _buildMadde("Sosyal Medya Platformlarında Engelleme",
                "Sosyal medya hesaplarınızda, zorbalık yapan kullanıcıları engelleyebilirsiniz. Engelleme işlemi, bu kişilerin sizinle iletişim kurmasını engeller."),
            const SizedBox(height: 10),
            _buildMadde("Raporlama Özelliklerini Kullanın",
                "Çoğu sosyal medya ve iletişim uygulaması, kullanıcıların rahatsız edici içerikleri veya davranışları raporlamasına olanak tanır. Rahatsız edici içerikler gördüğünüzde, bu raporlama sistemini kullanın."),
            const SizedBox(height: 10),
            _buildMadde("Gizlilik Ayarlarını Güncelleyin",
                "Hesap gizliliğinizi artırmak için, ayarlarınızı gözden geçirin ve sadece tanıdıklarınızın sizi bulabilmesini sağlayacak şekilde güncelleyin."),
            const SizedBox(height: 10),
            _buildMadde("Yardım Alın",
                "Eğer zorbalık durumuyla başa çıkmakta zorlanıyorsanız, güvendiğiniz birine veya bir uzmana danışmaktan çekinmeyin. Bu tür durumlarda destek almak önemlidir."),
            const SizedBox(height: 10),
            _buildMadde("İhtiyacınıza Uygun Uygulamaları Kullanın",
                "Bazı uygulamalar, kullanıcıların tehdit edici davranışlara karşı koruma sağlamasına yardımcı olacak özellikler sunar. Bu tür uygulamaları araştırın ve ihtiyacınıza uygun olanları kullanın."),
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
