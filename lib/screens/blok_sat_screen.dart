import 'package:flutter/material.dart';

import '../components/primary_button.dart';

class BlokSatScreen extends StatelessWidget {
  const BlokSatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'BLOK sat',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Image.asset(
                  'assets/icons/box3.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 55,
              ),
              child: Row(
                children: [
                  const Text(
                    'Mevcut BLOK bakiyeniz :',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 43,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Kaç adet BLOK satmak istiyorsunuz ?',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 35,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      '12',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 35,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Banka hesabı seçiniz :',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '12.000TL',
              style: TextStyle(
                fontSize: 55,
                color: Color(0xffFF0000),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Ödeme aracı seçiniz : ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'assets/icons/bank2.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Ziraat Bankası - 01283122xxx',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Blok satışı sadece banka havalesi ile gerçekleşmektedir. ',
              style: TextStyle(
                fontSize: 11,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              btnColor: Color(0xff00A9FF),
              btnText: 'Şimdi sat',
              btnTextColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
