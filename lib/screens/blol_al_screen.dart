import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/components/primary_button.dart';
import 'package:blokhouse/controllers/marketarea.dart';
import 'package:blokhouse/screens/blok_sat_screen.dart';
import 'package:blokhouse/screens/cards/card_payment_successful.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlokAlScreen extends StatelessWidget {
  const BlokAlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title:const Text(
          'BLOK al',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme:const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<MarketAreaController>(
            init: MarketAreaController(),
            builder: (cont) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/box3.png',
                      ),
                    ),
                  ),
           const       SizedBox(
                    height: 20,
                  ),
              const    Text(
                    'Kaç adet BLOK satın almak istiyorsunuz ?',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
              const    SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          cont.decreasBlolAl();
                        },
                        child:const Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                  const    SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                            color:const Color(0xffF0F0F0),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            cont.blolAl.toString(),
                            style:const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                 const     SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          cont.incrementBlolAl();
                        },
                        child:const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
              const    SizedBox(
                    height: 20,
                  ),
              const    Text(
                    'Ödenecek toplam tutar :',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
               const   SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${cont.blolAl * cont.blolAl}.000TL',
                    style:const TextStyle(
                      fontSize: 55,
                      color: Color(0xff00A9FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            const      SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: const[
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
               const   SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(context: context, widget:const BlokSatScreen());
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
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
                     const     SizedBox(
                            width: 10,
                          ),
                      const    Text(
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
             const     SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(context: context, widget:const BlokSatScreen());
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color:const Color(0xffF0F0F0),
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
                      const    SizedBox(
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
              );
            }),
      ),
    );
  }
}
