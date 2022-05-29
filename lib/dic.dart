import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:get/get.dart';
import 'controllers/credentials/cards/add_new_card.dart';

abstract class Dic {
  static final find = Get.find;

  static Future<void> setUp() async {
    Get.lazyPut(() => AuthControllers());
    Get.lazyPut(() => AddNewCardController().getPaymentMethods());
  }
}
