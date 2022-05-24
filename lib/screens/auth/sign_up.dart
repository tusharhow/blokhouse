import 'package:blokhouse/components/primary_button.dart';
import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;
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
                children: [
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
                children: [
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
                children: [
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
                children: [
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
                children: [
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
                children: [
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
                "I would like to receive your newsletter and other promotional information.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              value: _isChecked,
              onChanged: (newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            CheckboxListTile(
              title: const Text(
                "I would like to receive your newsletter and other promotional information.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              value: _isChecked,
              onChanged: (newValue) {
                setState(() {
                  _isChecked = newValue!;
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
                  authControllers.createAccount();
                }),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yardım',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Şifremi unuttum',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
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

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField(
      {Key? key, required this.hint, required this.controller})
      : super(key: key);
  final hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.10,
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          // filled: true,
          // fillColor: const Color(0xffF8FAFD),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.black12, width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
