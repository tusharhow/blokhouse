import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/components/primary_button.dart';
import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/help_and_communication/help_and_communication_screen.dart';
import 'package:flutter/material.dart';

import '../../components/reusable_text_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isCheckedFirst = false;
  bool _isCheckedSecond = false;
  @override
  Widget build(BuildContext context) {
    AuthControllers authControllers = AuthControllers();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    'Name',
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
                hint: 'Name',
                controller: authControllers.nameController,
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
                controller: authControllers.emailController,
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
                controller: authControllers.passwordController,
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
                children:const [
                  Text(
                    'T.C Kimlik veya Pasaport numarası',
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
                hint: 'yazınız...',
                controller: authControllers.passportNumberController,
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
                    'Doğum tarihi (dd/mm/yyyy)',
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
                hint: 'yazınız...',
                controller: authControllers.dobController,
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
                    'İkamet ettiğiniz şehir',
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
                hint: 'yazınız...',
                controller: authControllers.cityController,
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
                children: [
                  Text(
                    'Adres',
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
                hint: 'yazınız...',
                controller: authControllers.addressController,
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
                children: [
                  Text(
                    'Posta kodu',
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
                hint: 'yazınız...',
                controller: authControllers.postCodeController,
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
                children: [
                  Text(
                    'Cep telefonu',
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
                hint: 'yazınız...',
                controller: authControllers.phoneController,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CheckboxListTile(
              title: const Text(
                "BlokHouse üyelik sözleşme şartlarını okudum\nve koşullarını kabul ediyorum.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              value: _isCheckedFirst,
              onChanged: (newValue) {
                setState(() {
                  _isCheckedFirst = newValue!;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            CheckboxListTile(
              title: const Text(
                "Evet, gizlilik politikasının şartlarını okudum\nve koşullarını kabul ediyorum.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              value: _isCheckedSecond,
              onChanged: (newValue) {
                setState(() {
                  _isCheckedSecond = newValue!;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                btnColor: const Color(0xff00A9FF),
                btnText: 'Devam et',
                btnTextColor: Colors.white,
                onPressed: () {
                  // if (_isCheckedFirst && _isCheckedSecond) {
                  //   authControllers.createAccount();
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text(
                  //         'Lütfen koşulları kabul ediniz.',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 15,
                  //         ),
                  //       ),
                  //       backgroundColor: Colors.red,
                  //     ),
                  //   );
                  // }
                  authControllers.createAccount();
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Zaten bir hesabınız var mı?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
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
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Giriş yap',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
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
