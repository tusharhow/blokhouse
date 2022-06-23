import 'package:blokhouse/models/responses/add_payment_method_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/responses/add_payment_method_bank_response.dart';

class AddNewCardController extends GetxController {
  // add new card controllers
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardExpiryDateController =
      TextEditingController();
  final TextEditingController cardCVVController = TextEditingController();

  // add new bank controllers
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController ibanNumberController = TextEditingController();
  final TextEditingController bankHolderNameController =
      TextEditingController();
  final TextEditingController bankAccountNumberController =
      TextEditingController();

  final _auth = FirebaseAuth.instance;
  final firebase = FirebaseFirestore.instance;

  Future addNewCard(context) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    if (cardHolderNameController.text.isEmpty ||
        cardNumberController.text.isEmpty ||
        cardExpiryDateController.text.isEmpty ||
        cardCVVController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all the fields',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 10);

      return;
    } else {
      firestore
          .collection('users')
          .doc(user!.uid)
          .collection('paymentMethods')
          .add({
        "cardNumber": cardNumberController.text,
        "expiryDate": cardExpiryDateController.text,
        "cvv": cardCVVController.text,
        "cardHolderName": cardHolderNameController.text,
        "type": "card",
      });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Başarıyla eklendi'),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                    ));
      update();
    }
  }

  Future addNewBank(context) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    if (bankNameController.text.isEmpty ||
        ibanNumberController.text.isEmpty ||
        bankHolderNameController.text.isEmpty ||
        bankAccountNumberController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all the fields',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 10);

      return;
    } else {
      firestore
          .collection('users')
          .doc(user!.uid)
          .collection('paymentMethods')
          .add({
        "bankName": bankNameController.text,
        "ibanNumber": ibanNumberController.text,
        "bankHolderName": bankHolderNameController.text,
        "bankAccountNumber": bankAccountNumberController.text,
        "type": "bank",
      });
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Başarıyla eklendi'),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                    ));
      update();
    }
  }

  List<AddPaymentMethodResponse> paymentMethodsList = [];
  List<AddPaymentMethodResponse> paymentMethodCard = [];
  List<AddPaymentMethodBankResponse> paymentMethodBank = [];
// get bank and cards information
  List<AddPaymentMethodResponse> getPaymentMethods() {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .get()
        .then((value) {
      for (var element in value.docs) {
        final data = element.data();
        final type = data['type'];
        if (type == 'card') {
          paymentMethodCard.add(AddPaymentMethodResponse.fromJson(data));

          update();
          print(paymentMethodCard.length);
        } else if (type == 'bank') {
          paymentMethodBank.add(AddPaymentMethodBankResponse.fromJson(data));
          update();
          print(paymentMethodBank.length);
        }
      }
      update();
    });
    return paymentMethodsList;
  }

  // get id of card
  String getCardId() {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .get()
        .then((value) {
      for (var element in value.docs) {
        final data = element.data();
        final type = data['type'];
        if (type == 'card') {
          final cardNumberFromFirebase = data['cardNumber'];
          if (cardNumberFromFirebase == "ttgdtjjggg") {
            final id = element.id;
            update();
            print(id);
            return id;
          }
        }
      }
      update();
    });
    return '';
  }

  // get bank id from firebase and delete it
  Future getBankId(String? ibanNumber) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .get()
        .then((value) {
      for (var element in value.docs) {
        final data = element.data();
        final type = data['type'];
        if (type == 'bank') {
          final ibanNumberFromFirebase = data['ibanNumber'];
          if (ibanNumberFromFirebase == ibanNumber) {
            final id = element.id;

            deleteBankById(id);
            print(id);
            update();
            return id;
          }
        }
      }
      update();
    });
  }

  // get card id from firebase and delete it
  Future getCardIdFromFirebase(String? cardNumber) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .get()
        .then((value) {
      for (var element in value.docs) {
        final data = element.data();
        final type = data['type'];
        if (type == 'card') {
          final cardNumberFromFirebase = data['cardNumber'];
          if (cardNumberFromFirebase == cardNumber) {
            final id = element.id;

            deleteCardById(id);
            print(id);
            update();
            return id;
          }
        }
      }
      update();
    });
  }

  deleteBankById(String id) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .doc(id)
        .delete();
    update();
  }

  deleteCardById(String id) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    firestore
        .collection('users')
        .doc(user!.uid)
        .collection('paymentMethods')
        .doc(id)
        .delete();
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getPaymentMethods();
  }
}
