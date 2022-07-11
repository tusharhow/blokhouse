import 'package:flutter/material.dart';

class BuyBlock extends StatelessWidget {
  const BuyBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Nasıl ve nereden BLOK satın alabilirim ?',
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
                'BlokHouse hesabınızı açtıktan ve kimliğinizi doğruladıktan sonra kolayca Kredi Kartı veya Banka Havalesi ile Hesabım sayfasındaki BLOKlarım segmenti üzerinden BLOK satın alabilirsiniz.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Hesabınızın Yönetim Paneli üzerinden BLOK adedinizi veya Yatırımlarınızı takip edebilirsiniz.',
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
