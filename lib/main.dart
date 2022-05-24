import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/bottom_nav_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          900: Color(0xff0B6BCC),
        }),
      ),
      home: const HomePageMain(),
    );
  }
}
