import 'package:flutter/material.dart';

class ProfileMenuRow extends StatelessWidget {
  ProfileMenuRow({Key? key, required this.title, required this.ontap})
      : super(key: key);
  final String title;

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
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
