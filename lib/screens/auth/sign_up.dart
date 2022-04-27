import 'package:blokhouse/components/primary_button.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign Up', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
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
            height: 30,
          ),
          PrimaryButton(
              btnColor: const Color(0xff00A9FF),
              btnText: 'Sign Up',
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
      ),
    );
  }
}

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({Key? key, required this.hint}) : super(key: key);
  final hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.08,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          filled: true,
          fillColor: const Color(0xffF8FAFD),
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
