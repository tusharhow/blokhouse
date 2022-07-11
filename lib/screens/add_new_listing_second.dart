import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/list_in_marketarea.dart';
import 'package:flutter/material.dart';

class AddNewListingSecond extends StatelessWidget {
  const AddNewListingSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Yeni ilan ekle',
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
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/im8.png',
                        height: 160,
                      ),
                      Column(
                        children: [
                      const    Padding(
                            padding:  EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              'Göztepe Residence',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  const        SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/loc.png',
                              ),
                     const         SizedBox(
                                width: 5,
                              ),
                       const       Text(
                                'İstanbul, Kadıköy',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                   const       SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                           const   Padding(
                                padding:  EdgeInsets.only(left: 15),
                                child: Text(
                                  'BLOK adediniz : 10 BLOK',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            const  SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 30,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                           const   Text(
                                'Tavsiye edilen satış fiyatı',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                         const     SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'assets/icons/info.png',
                                height: 20,
                              )
                            ],
                          ),
                          Row(
                            children: [
                       const       Text(
                                '1.000 TL /',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/box2.png',
                                height: 20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
       const   SizedBox(
            height: 20,
          ),
       const   Center(
            child: Text(
              'Hesabınızdaki yatırımları bu sayfa\nüzerinden pazar alanında listeliyebiliriniz.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              push(context: context, widget:const ListInMarketArea());
            },
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff00A9FF),
              ),
              child: const Center(
                  child: Text(
                'Devam et',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
