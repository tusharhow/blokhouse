import 'package:flutter/material.dart';

class EarnWithBlokHouse extends StatelessWidget {
  const EarnWithBlokHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BlokHouse ile ne kadar kazanç sağlayabilirim?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Tahmini kazanç oranı simülasyonu yatırımcılara ortalama yıllık sağlayabilecekleri tahmini bir kazanç hakkında fikir vermesi sonucunda geliştirilmiştir. Kazanç, binanın fiyatı, altyapısı, konumu, sektördeki arz/talep,  gelecekteki olası altyapı geliştirmeleri, enflasyon ve zaman içinde değer kazanma olasılığı gibi birçok faktöre bağlı olduğundan, her gayrimenkulde değişiklik göstermektedir.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Gayrimenkul piyasası her sene ortalama en az enflasyon oranı kadar değerlenmektedir. Yatırımınızın en az bu oranlar arasında tahmini bir kârlılığa sahip olucaktır. Bunun dışında BlokHouse ekibi müşterilerine en kârlı gayrimenkulleri sunmak için elinden gelenin en iyisini yapacaktır. Açıklanan kârlılık oranları garanti edilemez, tahminidir.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Ayrıca, gayrimenkul portföyünüzü çeşitlendirmenizi öneririz.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ));
  }
}
