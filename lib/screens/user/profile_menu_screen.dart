import 'package:flutter/material.dart';

import '../../components/profile_menu_row.dart';

class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/user.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                const Text(
                  'Victoria Robertson',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                const Text(
                  'Subheading',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ProfileMenuRow(title: 'Profile', ontap: () {}),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
            endIndent: 20,
            indent: 20,
          ),
          ProfileMenuRow(title: 'Change password', ontap: () {}),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
            endIndent: 20,
            indent: 20,
          ),
          ProfileMenuRow(title: 'Notification preferences', ontap: () {}),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
            endIndent: 20,
            indent: 20,
          ),
          ProfileMenuRow(title: 'Log out', ontap: () {})
        ],
      ),
    );
  }
}

