import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/faq_screens/buy_block.dart';
import 'package:blokhouse/screens/faq_screens/earn_with_blokhouse.dart';
import 'package:blokhouse/screens/faq_screens/involved_property_management.dart';
import 'package:blokhouse/screens/faq_screens/my_bloks_price.dart';
import 'package:blokhouse/screens/faq_screens/when_sell_bloks.dart';
import 'package:blokhouse/screens/faq_screens/where_sell_bloks.dart';
import 'package:flutter/material.dart';

import 'my_investments_appreciated.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Sıkça Sorulan Sorular',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const BuyBlock());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'Nasıl ve nereden BLOK satın alabilirim ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(
                    context: context,
                    widget: const InvolvedPropertyManagement());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'Gayrimenkul yönetimiyle kim ilgileniyor ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const EarnWithBlokHouse());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'BlokHouse ile ne kadar kazanç sağlayabilirim?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const MyInvestmentAppriciated());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'BLOK yatırımlarımın değerlendiğini\nnasıl anlarım ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const WhenSellBloks());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'BLOK larımı ne zaman satabilirim ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const MyBloksPrice());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'BLOK larımı hangi fiyata satabilirim ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const WhereSellBloks());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Center(
                  child: Text(
                    'BLOK larımı nerede satabilirim ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
