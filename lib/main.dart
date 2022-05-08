import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/auth/sign_up.dart';
import 'package:blokhouse/screens/main/home_page.dart';
import 'package:blokhouse/screens/main/my_wallet.dart';
import 'package:blokhouse/screens/splash/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/add_new_card.dart';
import 'screens/auth/kyc_verification.dart';
import 'screens/blok_sat_screen.dart';
import 'screens/blol_al_screen.dart';
import 'screens/bottom_nav_screen.dart';
import 'screens/card_payment_failed.dart';
import 'screens/card_payment_successful.dart';
import 'screens/credit_card_payment_failed.dart';
import 'screens/main/message_box_screen.dart';
import 'screens/main/my_account.dart';
import 'screens/my_bank_information.dart';
import 'screens/my_contact_information.dart';
import 'screens/payment_by_wire_transfer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff0B6BCC, {
          50: Color(0xff0B6BCC),
          100: Color(0xff0B6BCC),
          200: Color(0xff0B6BCC),
          300: Color(0xff0B6BCC),
          400: Color(0xff0B6BCC),
          500: Color(0xff0B6BCC),
          600: Color(0xff0B6BCC),
          700: Color(0xff0B6BCC),
          800: Color(0xff0B6BCC),
          900: Color(0xff0B6BCC)
        }),
      ),
      home: AddNewCardScreen(),
    );
  }
}
