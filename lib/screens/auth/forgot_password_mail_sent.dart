import 'package:blokhouse/components/reusable_text_form.dart';
import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/screens/auth/confirm_new_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/navigate.dart';
import '../../components/primary_button.dart';
import '../help_and_communication/help_and_communication_screen.dart';

class ForgotPasswordMailSent extends StatelessWidget {
  const ForgotPasswordMailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthControllers _authControllers = Get.put(AuthControllers());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Şifre yenile',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: Image.asset(
                'assets/logos/logo2.png',
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: const [
                  Text(
                    'Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ReusableTextFormField(
              hint: 'Mail adresiniz',
              controller: _authControllers.forgotEmailController,
            ),
            const SizedBox(height: 30),
            const Text(
              'Mail adresinize gelecek olan linke\ntıklayarak şifrenizi yenileyebilirsiniz.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              btnColor: const Color(0xff00A9FF),
              btnText: 'Devam et',
              btnTextColor: Colors.white,
              onPressed: () {
                _authControllers.sendPasswordResetEmail().then((value) {
                  if (value) {
                    Get.to(const ConfirmNewPassword());
                  } else {
                    Get.snackbar(
                      'Hata',
                      'Mail gönderilemedi. Lütfen tekrar deneyiniz.',
                      icon:const Icon(
                        Icons.error,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                      duration:const Duration(seconds: 3),
                    );
                  }
                });
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      push(
                          context: context,
                          widget: const HelpAndCommunicationScreen());
                    },
                    child: const Text(
                      'Yardım',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Şifremi unuttum',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
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
