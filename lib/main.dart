import 'package:blokhouse/dic.dart';
import 'package:blokhouse/screens/splash/onboard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Dic.setUp();
  runApp(const MyApp());
  await Dic.init();
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Blok House',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: const IntroPage(),
    );
  }
}
