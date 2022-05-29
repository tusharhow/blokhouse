import 'package:blokhouse/dic.dart';
import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/splash/onboard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/bottom_nav_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await Dic.setUp();
  runApp(const MyApp());
  _init();
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
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
    );
  }
}
