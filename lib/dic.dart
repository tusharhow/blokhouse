import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/controllers/cards/add_new_card.dart';
import 'package:get/get.dart';

abstract class Dic {
  static final find = Get.find;

  static Future<void> setUp() async {
    // Services
    // Get.put<AuthControllers>(
    //   AuthControllers(),
    // );
    Get.lazyPut(() => AuthControllers());
    Get.lazyPut(() => AddNewCardController().getPaymentMethods());
  }
}
