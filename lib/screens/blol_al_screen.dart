import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/components/primary_button.dart';
import 'package:blokhouse/screens/blok_sat_screen.dart';
import 'package:blokhouse/screens/card_payment_successful.dart';
import 'package:flutter/material.dart';

class BlokAlScreen extends StatelessWidget {
  const BlokAlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text(
          'BLOK al',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
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
            SizedBox(
              height: 20,
            ),
            Text(
              'Kaç adet BLOK satın almak istiyorsunuz ?',
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
              'Ödenecek toplam tutar :',
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
                color: Color(0xff00A9FF),
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
            GestureDetector(
              onTap: () {
                push(context: context, widget: BlokSatScreen());
              },
              child: Container(
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
                      'Havale / EFT - Ziraat Bankası',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                push(context: context, widget: BlokSatScreen());
              },
              child: Container(
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
                        'assets/icons/card.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Kredi Kartı - xxxx xxxx xxxx 5948',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            PrimaryButton(
              btnColor: Color(0xff00A9FF),
              btnText: 'Şimdi öde',
              btnTextColor: Colors.white,
              onPressed: () {
                push(context: context, widget: CardPaymentSuccessful());
              },
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
