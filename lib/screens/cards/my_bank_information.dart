import 'package:blokhouse/screens/add_new_card.dart';
import 'package:blokhouse/screens/my_bank_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/navigate.dart';
import '../../components/primary_button.dart';
import '../../controllers/credentials/cards/add_new_card.dart';
import '../blok_sat_screen.dart';

class MyBankInformation extends StatelessWidget {
  const MyBankInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Banka bilgilerim',
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
              bottom: 20,
            ),
            child: Row(
              children: const [
                Text(
                  'Cards',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<AddNewCardController>(
              init: AddNewCardController(),
              builder: (cont) {
                return cont.paymentMethodCard.isEmpty
                    ? const Center(
                        child: Text(
                          'No card added yet',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                            itemCount: cont.paymentMethodCard.length,
                            itemBuilder: (context, index) {
                              final card = cont.paymentMethodCard[index];
                              return Center(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  height: 65,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey.withOpacity(0.1),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Image.asset(
                                          'assets/icons/card.png',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${card.cardHolderName} - ${card.cardNumber}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        maxLines: 1,
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25),
                                        child: Image.asset(
                                          'assets/icons/in.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      );
              }),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
              bottom: 20,
            ),
            child: Row(
              children: const [
                Text(
                  'Bank Accounts',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<AddNewCardController>(
              init: AddNewCardController(),
              builder: (cont) {
                return cont.paymentMethodCard.isEmpty
                    ? const Center(
                        child: Text(
                          'No card added yet',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                            itemCount: cont.paymentMethodBank.length,
                            itemBuilder: (context, index) {
                              final bank = cont.paymentMethodBank[index];
                              return Center(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    height: 65,
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Image.asset(
                                            'assets/icons/bank2.png',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '${bank.bankName} - ${bank.bankAccountNumber}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 25),
                                          child: Image.asset(
                                            'assets/icons/in.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      );
              }),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return bottomSheet(context);
                  });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff00A9FF),
              ),
              child: const Center(
                  child: Text(
                'Yeni ekle',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

Widget bottomSheet(con) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(con).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose payment method",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.bakery_dining),
            onPressed: () {
              push(context: con, widget: const MyBankInformationSecond());
            },
            label: const Text("Add Bank"),
          ),
          FlatButton.icon(
            icon: Icon(Icons.card_giftcard),
            onPressed: () {
              push(context: con, widget: const AddNewCardScreen());
            },
            label: Text("Add New Card"),
          ),
        ])
      ],
    ),
  );
}
