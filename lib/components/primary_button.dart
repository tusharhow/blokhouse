import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    @required this.btnColor,
    @required this.btnText,
    @required this.btnTextColor,
    required this.onPressed,
  }) : super(key: key);
  final btnColor;
  final btnText;
  final btnTextColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.10,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(color: btnTextColor, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
