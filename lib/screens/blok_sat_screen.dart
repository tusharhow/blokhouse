import 'package:blokhouse/controllers/marketarea.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/navigate.dart';
import '../components/primary_button.dart';
import 'cards/card_payment_successful.dart';

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
                          child: Center(
                            child: Text(
                              cont.blokSat.toString(),
                              style:const TextStyle(
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
                const  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          cont.decreasBlokSat();
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
                            cont.blokSat.toString(),
                            style:const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  const    SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          cont.incrementBlokSat();
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
                    'Banka hesabı seçiniz :',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
              const    SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${cont.blokSat}.000 TL',
                    style:const TextStyle(
                      fontSize: 55,
                      color: Color(0xffFF0000),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              const    SizedBox(
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
           const       SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (() {
                      push(context: context, widget:const CardPaymentSuccessful());
                    }),
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
