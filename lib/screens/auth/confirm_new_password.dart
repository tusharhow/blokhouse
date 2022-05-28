import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/navigate.dart';
import '../../components/primary_button.dart';
import '../../components/reusable_text_form.dart';
import '../help_and_communication/help_and_communication_screen.dart';

class ConfirmNewPassword extends StatelessWidget {
  const ConfirmNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _passController = TextEditingController();
    final TextEditingController _passConfirmController =
        TextEditingController();

    bool _isVisibility = true;

    AuthControllers _authControllers = Get.put(AuthControllers());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yeni şifre',
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
                    'Yeni şifre',
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
              controller: _passController,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: const [
                  Text(
                    'Yeni şifreyi tekrar et ',
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
              controller: _passConfirmController,
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              btnColor: const Color(0xff00A9FF),
              btnText: 'Onayla',
              btnTextColor: Colors.white,
              onPressed: () {
                if (_passController.text == _passConfirmController.text) {
                  push(context: context, widget: const LoginScreen());
                } else {
                  Get.snackbar(
                    'Hata',
                    'Şifreler uyuşmuyor',
                    icon: Icon(
                      Icons.error,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
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
