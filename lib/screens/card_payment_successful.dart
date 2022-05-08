import 'package:flutter/material.dart';

class CardPaymentSuccessful extends StatelessWidget {
  const CardPaymentSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Ödeme başarılı bir şekilde\ngerçekleşti !',
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
            'BlokHouse üzerinden yatırıma başlayabilirsiniz...',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/icons/done.png'),
          SizedBox(
            height: 30,
          ),
          Text(
            '10.000₺ Tutarı kartınızdan başarılı bir şekilde\nçekilmiştir !',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '10 adet BLOK hesabınıza kısa süre içerisinde aktarılacaktır.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
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
                child: Text('Hesabıma geri dön',
                    style: TextStyle(color: Color(0xff596273), fontSize: 20))),
          ),
        ],
      ),
    );
  }
}
