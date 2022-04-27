import 'package:flutter/material.dart';

class ProfileMenuRow extends StatelessWidget {
  ProfileMenuRow({Key? key, required this.title, required this.ontap})
      : super(key: key);
  final title;

  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
