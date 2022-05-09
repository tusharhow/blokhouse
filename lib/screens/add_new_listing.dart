import 'package:flutter/material.dart';

class AddNewListing extends StatelessWidget {
  const AddNewListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text(
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
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Mevcut hesabınızda bir yatırım\nbulunmamakta.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Yeni ilan eklemek için öncellikle yatırım yapmanız gerekiyor.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Color(0xff00A9FF),
            ),
            child: Center(
                child: Text(
              'Anaysayfa',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
