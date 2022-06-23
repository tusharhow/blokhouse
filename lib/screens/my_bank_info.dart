import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/credentials/cards/add_new_card.dart';

class MyBankInformationSecond extends StatelessWidget {
  const MyBankInformationSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddNewCardController addNewCardController = AddNewCardController();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20 * 2,
            ),
            const Center(
              child: Text(
                'Banka hesabı ve BlokHouse kullanıcı \nadı-soyadı aynı olmak zorundadır.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20 * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: const [
                  Text(
                    'Banka adı (zorunlu)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                controller: addNewCardController.bankNameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Ziraat Bankası',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Değiştir',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff00A9FF),
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Iban numarası (zorunlu)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                controller: addNewCardController.ibanNumberController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'TR 7898 3829 3920 1290 892',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Değiştir',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff00A9FF),
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Adı - Soyadı (zorunlu)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                controller: addNewCardController.bankHolderNameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Ali Keskin',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Değiştir',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff00A9FF),
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Banka hesap numarası (zorunlu)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                controller: addNewCardController.bankAccountNumberController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: '4738210',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Değiştir',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff00A9FF),
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                addNewCardController.addNewBank(context);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: const Color(0xff00A9FF),
                ),
                child: const Center(
                    child: Text(
                  'Yeni hesap ekle',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
