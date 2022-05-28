import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField(
      {Key? key, required this.hint, required this.controller})
      : super(key: key);
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.10,
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
