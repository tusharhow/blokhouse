import 'package:flutter/material.dart';

class CreditCardPaymentFailed extends StatelessWidget {
  const CreditCardPaymentFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'İşlem sırasında hata oluştu !',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lütfen girmiş olduğunuz bilgileri kontrol ederek tekrar\ndeneyiniz...',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/icons/failed.png'),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(
                color: Color(0xff596273),
              ),
            ),
            child: Center(
              child: Text(
                'Ödemeye geri dön',
                style: TextStyle(color: Color(0xff596273), fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
