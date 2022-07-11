import 'package:flutter/material.dart';

class PaymentByWireTransfer extends StatelessWidget {
  const PaymentByWireTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Havale bilgileriniz başarılı\nbir şekilde alınmıştır !',
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
            'En kısa zaman içerisinde tutar hesabınıza\nyansıtılacaktır.',
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
            'Son bir adım kaldı, lütfen havale dekontunu\nyükleyiniz.',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset(
                    'assets/icons/bnk.png',
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Dekont yükle',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
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
              child: Text(
                'Hesabıma geri dön',
                style: TextStyle(color: Color(0xff596273), fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
