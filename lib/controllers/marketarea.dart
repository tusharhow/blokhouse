import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MarketAreaController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  int first = 0;
  int second = 0;
  int third = 0;
  int fourth = 0;
  int blokSat = 0;
  int blolAl = 0;

  void incrementFirst() {
    first++;
    update();
  }

  void decreasFirst() {
    first--;
    update();
  }

  void incrementSecond() {
    second++;
    update();
  }

  void decreasSecond() {
    second--;
    update();
  }

  void incrementThird() {
    third++;
    update();
  }

  void decreasThird() {
    third--;
    update();
  }

  void incrementFourth() {
    fourth++;
    update();
  }

  void decreasFourth() {
    fourth--;
    update();
  }

  void incrementBlokSat() {
    blokSat++;
    update();
  }

  void decreasBlokSat() {
    blokSat--;
    update();
  }

  void incrementBlolAl() {
    blolAl++;
    update();
  }

  void decreasBlolAl() {
    blolAl--;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('//////////////////////${_auth.currentUser!.uid}');
  }
}
