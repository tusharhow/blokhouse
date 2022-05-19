import 'package:blokhouse/screens/add_new_card.dart';
import 'package:flutter/material.dart';

import '../components/navigate.dart';
import '../components/primary_button.dart';
import 'blok_sat_screen.dart';

class MyBankInformation extends StatelessWidget {
  const MyBankInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text(
          'Banka bilgilerim',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.withOpacity(0.1),
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
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Image.asset(
                      'assets/icons/in.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.withOpacity(0.1),
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
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Image.asset(
                      'assets/icons/in.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              push(context: context, widget: AddNewCardScreen());
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Color(0xff00A9FF),
              ),
              child: Center(
                  child: Text(
                'Yeni ekle',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
