import 'package:blokhouse/screens/auth/forgot_password_mail_sent.dart';
import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/auth/sign_up.dart';
import 'package:blokhouse/screens/help_and_communication/message.dart';
import 'package:blokhouse/screens/splash/onboard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/auth/confirm_new_password.dart';
import 'screens/bottom_nav_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  // _init();
}

_init() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getBool('seen') == null) {
    prefs.setBool('seen', true);

    Get.off(() => const IntroPage());
  } else {
    final token = prefs.getString('userID');
    if (token != null) {
      print('token: $token');
      Get.off(() => const HomePageMain());
    } else {
      Get.off(() => const LoginScreen());
    }
  }
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
          900: Color(0xff0B6BCC),
        }),
      ),
      home: const HelpMessage(),
    );
  }
}
