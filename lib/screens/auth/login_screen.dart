import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/screens/auth/forgot_password_mail_sent.dart';
import 'package:flutter/material.dart';

import '../../components/primary_button.dart';
import '../../components/reusable_text_form.dart';
import 'sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthControllers authControllers = AuthControllers();
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
          Image.asset(
            'assets/logos/logo2.png',
            // height: 100,
            // width: 100,
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Row(
              children: const[
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ReusableTextFormField(
              hint: 'Email',
              controller: authControllers.loginEmailController,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Row(
              children: const[
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ReusableTextFormField(
              hint: 'Password',
              controller: authControllers.loginPasswordController,
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
              onPressed: () {
                authControllers.loginUser();
              }),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const ForgotPasswordMailSent());
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Color(0xff00A9FF),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xff00A9FF),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
