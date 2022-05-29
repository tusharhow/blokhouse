import 'package:flutter/material.dart';

import '../controllers/credentials/cards/add_new_card.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddNewCardController addNewCardController = AddNewCardController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Kredi kartı ekle',
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
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/crd.png',
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: const [
                Text(
                  'Kredi kartı sahibi',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: addNewCardController.cardHolderNameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Dwayne Johnson',
                hintStyle: const TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: [
                Text(
                  'Kredi kartı numarası',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: addNewCardController.cardNumberController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  hintText: '4225 9765 0008 6141',
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  suffixIcon: Image.asset(
                    'assets/icons/card.png',
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: addNewCardController.cardExpiryDateController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        hintText: '09 / 24',
                        hintStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'CVV',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: addNewCardController.cardCVVController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          hintText: '722',
                          hintStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          ),
                          suffixIcon: Image.asset(
                            'assets/icons/qu.png',
                          )),
                    ),
                  ],
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              addNewCardController.addNewCard().then((value) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Kart bilgileriniz başarıyla eklendi.'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                ));
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xff00A9FF),
              ),
              child: const Center(
                  child: Text(
                'Yeni kart ekle',
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
        ]),
      ),
    );
  }
}
