import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/chat/chat_controller.dart';
import 'controllers/credentials/cards/add_new_card.dart';
import 'screens/auth/login_screen.dart';
import 'screens/bottom_nav_screen.dart';
import 'screens/splash/onboard_screen.dart';

abstract class Dic {
  static final find = Get.find;

  static Future<void> setUp() async {
    Get.lazyPut(() => AuthControllers());
    Get.lazyPut(() => AddNewCardController().getPaymentMethods());
    Get.lazyPut(() => ChatConroller().getMyChatList());
  }

  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('seen') == null) {
      prefs.setBool('seen', true);
      Get.offAll(() => const IntroPage());
    } else {
      final token = prefs.getString('userID');
      if (token != null) {
        print('token: $token');
        Get.offAll(() => const HomePageMain());
      } else {
        print('Please login');
        Get.offAll(() => const LoginScreen());
      }
    }
  }
}
