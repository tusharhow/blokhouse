import 'package:flutter/material.dart';

class InvolvedPropertyManagement extends StatelessWidget {
  const InvolvedPropertyManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Gayrimenkul yönetimiyle kim ilgileniyor ?',
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
                'Gayrimenkullerin kiralama, teknik, idari ve hukuki yönetimi ile biz ilgileniyoruz. Bir yatırımcı olarak, pasif kira getirisi ve değerlenen bir gayrimenkul yatırımı sahibi oluyorsunuz.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Gayrimenkul arama, finansman, satın alma, bakım veya tadilat, kiracı yönetimi, tapu, noter işlemleri, emlak vergisinin ödenmesi: içiniz rahat edebilir, BlokHouse her şey ile ilgileniyor.',
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
