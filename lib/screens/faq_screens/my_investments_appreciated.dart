import 'package:flutter/material.dart';

class MyInvestmentAppriciated extends StatelessWidget {
  const MyInvestmentAppriciated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Şirket olarak BLOK yatırımı yapabilirmiyim ?',
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
                'Tabii ki ! Sizden sadece fazladan birkaç evrak talep edebiliriz.',
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
