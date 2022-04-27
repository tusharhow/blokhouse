import 'package:flutter/material.dart';

import '../../components/primary_button.dart';
import 'sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Log in', style: TextStyle(color: Colors.black)),
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
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: ReusableTextFormField(
              hint: 'Name',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: ReusableTextFormField(
              hint: 'Email',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: ReusableTextFormField(
              hint: 'Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
              btnColor: const Color(0xff00A9FF),
              btnText: 'Log in',
              btnTextColor: Colors.white,
              onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                color: Color(0xff00A9FF),
                fontSize: 14,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
