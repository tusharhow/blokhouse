import 'package:blokhouse/screens/calendar_screen.dart';
import 'package:blokhouse/screens/expenses_screen.dart';
import 'package:blokhouse/screens/user_options_screen.dart';
import 'package:blokhouse/screens/walkthrough_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/blog_post_screen.dart';
import 'screens/compose_screen.dart';
import 'screens/content_screen.dart';
import 'screens/feed_screen.dart';
import 'screens/images_screen.dart';
import 'screens/insights_screen.dart';
import 'screens/market_screen.dart';
import 'screens/message_screen.dart';
import 'screens/rating_screen.dart';
import 'screens/user/profile_post_screen.dart';

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
      home: UsersOptionsScreen(),
    );
  }
}
