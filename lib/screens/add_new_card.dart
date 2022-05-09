import 'package:flutter/material.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text(
          'Kredi kartı ekle',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/crd.png',
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: [
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Dwayne Johnson',
                labelStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
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
                  labelText: '4225 9765 0008 6141',
                  labelStyle: TextStyle(
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
                      children: [
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: '09 / 24',
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
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
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          labelText: '722',
                          labelStyle: TextStyle(
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
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Color(0xff00A9FF),
            ),
            child: Center(
                child: Text(
              'Yeni kart ekle',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
