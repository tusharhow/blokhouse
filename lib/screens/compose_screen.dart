import 'package:blokhouse/components/primary_button.dart';
import 'package:flutter/material.dart';

class ComposeScreen extends StatelessWidget {
  const ComposeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Compose',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Compose your message here...',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                // enabledBorder: UnderlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.black12),
                //   borderRadius: BorderRadius.circular(30),
                // ),
                // focusedBorder: UnderlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.black12),
                //   borderRadius: BorderRadius.circular(30),
                // ),
                border: InputBorder.none,
                enabled: true,
              ),
            ),
          ),
          SizedBox(height: 200),
          PrimaryButton(
              btnColor: Color(0xff00A9FF),
              btnText: 'Send',
              btnTextColor: Colors.white,
              onPressed: () {})
        ],
      )),
    );
  }
}
