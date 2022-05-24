import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/bottom_nav_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/navigate.dart';

class AuthControllers extends GetxController {
  // sign up text editing controllers

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passportNumberController =
      TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  // login text editing controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> createAccount() async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    final firestore = FirebaseFirestore.instance;
    firestore.collection('users').doc(user.user!.uid).set(
      {
        "name": nameController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "passportNumber": passportNumberController.text,
        "dateOfBirth": dobController.text,
        "city": cityController.text,
        "address": addressController.text,
        "postalCode": postCodeController.text,
        "mobileNumber": phoneController.text,
      },
    );
    if (user != null) {
      Get.to(LoginScreen());
    } else {
      print('error');
    }
  }

  Future<void> loginUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final user = await _auth.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    if (user != null) {
      // lets save user with shared prefrences

      prefs.setString("userID", user.user!.uid);
      print(user.user!.uid);
      Get.to(HomePageMain());
    } else {
      print('error');
    }
  }

  // fetch current user data
  Future<void> fetchUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;
    final userData = await firestore.collection('users').doc(user!.uid).get();
    if (userData.exists) {
     
    }
  }

  // Let's make a function for logout

  Future<void> logoutUser() async {
    await _auth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offAll(LoginScreen());
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchUserData();
  }
}
