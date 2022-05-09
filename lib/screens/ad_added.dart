import 'package:flutter/material.dart';

class AdAddedScreen extends StatelessWidget {
  const AdAddedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Tebrikler! Bloklarınız başarılı\nbir şekilde finansman\niçin atandı.',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/done.png',
            color: Color(0xff00A9FF),
          ),
          SizedBox(
            height: 40,
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
                'Anasayfa',
                style: TextStyle(color: Color(0xff596273), fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
