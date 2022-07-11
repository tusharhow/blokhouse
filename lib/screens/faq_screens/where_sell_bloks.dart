import 'package:flutter/material.dart';

class WhereSellBloks extends StatelessWidget {
  const WhereSellBloks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BLOK larımı nerede satabilirim ?',
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
            children: const [
              SizedBox(height: 20),
              Text(
                'BLOK larınızı özel olarak tasarladığımız MarketPlace (Pazar Alanı) üzerinden satışa koyabilirsiniz.',
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
