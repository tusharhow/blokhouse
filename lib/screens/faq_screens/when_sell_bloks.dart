import 'package:flutter/material.dart';

class WhenSellBloks extends StatelessWidget {
  const WhenSellBloks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BLOK larımı ne zaman satabilirim ?',
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
                'BLOK larınızı istediğiniz zaman satabilirsiniz.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Ancak BLOK değerleri dönemsel olarak yapılacak Gayrimenkul değerleme raporları üzerinden değer artışına uğrayacaktır.',
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
