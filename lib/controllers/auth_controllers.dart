import 'package:path/path.dart';
import 'dart:io';
import 'dart:io' show File;
import 'package:blokhouse/screens/auth/login_screen.dart';
import 'package:blokhouse/screens/bottom_nav_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  // Forgot password
  final TextEditingController forgotEmailController = TextEditingController();

  // update profile text editing controllers
  final TextEditingController updateNameController = TextEditingController();
  final TextEditingController updateCityController = TextEditingController();
  final TextEditingController updateAddressController = TextEditingController();
  final TextEditingController updatePhoneController = TextEditingController();
  final TextEditingController updatePassportNumberController =
      TextEditingController();
  final TextEditingController updatePostCodeController =
      TextEditingController();
  final TextEditingController updateDobController = TextEditingController();
  final TextEditingController updateEmailController = TextEditingController();

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
      Get.offAll(const LoginScreen());
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
      Get.offAll(const HomePageMain());
    } else {
      print('error');
    }
  }

  // Get user details by user id
  String? name;
  String? email;
  String? passportNumber;
  String? dateOfBirth;
  String? city;
  String? address;
  String? postalCode;
  String? mobileNumber;
  String? image;

  Future<void> getUserDetails() async {
    final firestore = FirebaseFirestore.instance;
    final user =
        await firestore.collection('users').doc(_auth.currentUser!.uid).get();
    if (user != null) {
      name = user['name'];
      email = user['email'];
      passportNumber = user['passportNumber'];
      dateOfBirth = user['dateOfBirth'];
      city = user['city'];
      address = user['address'];
      postalCode = user['postalCode'];
      mobileNumber = user['mobileNumber'];
      image = user['image'];
      print('////////////////////////${image}');
      update();
      print(user['image']);
    } else {
      print('error');
    }
  }

  List<String> downloadUrl = <String>[];
// pick image
  File? pickedImage;
  final picker = ImagePicker();
  Future<void> pickImage() async {
    var selected = await picker.pickImage(source: ImageSource.camera);
    if (selected != null) {
      pickedImage = File(selected.path);
      update();
      print(pickedImage!.path);
    } else {
      print('error');
    }
  }

  // update user profile and save image to firebase storage
  Future<void> updateUserProfileAndSaveImage(context) async {
    final user = _auth.currentUser;
    final firestore = FirebaseFirestore.instance;

    final String? pickedFile =
        basename(pickedImage == null ? image.toString() : pickedImage!.path);
    Reference reference = FirebaseStorage.instance.ref().child(pickedFile!);
    await reference.putData(
      pickedImage!.readAsBytesSync(),
      SettableMetadata(contentType: 'image/jpeg'),
    );
    await reference.getDownloadURL().then((fileURL) {
      if (kDebugMode) {
        print('File URL: $fileURL');
      }
      final resE = firestore.collection('users').doc(user!.uid).set(
        {
          "name": updateNameController.text.isEmpty
              ? name
              : updateNameController.text,
          "email": updateEmailController.text.isEmpty
              ? email
              : updateEmailController.text,
          "passportNumber": updatePassportNumberController.text.isEmpty
              ? passportNumber
              : updatePassportNumberController.text,
          "dateOfBirth": updateDobController.text.isEmpty
              ? dateOfBirth
              : updateDobController.text,
          "city": updateCityController.text.isEmpty
              ? city
              : updateCityController.text,
          "address": updateAddressController.text.isEmpty
              ? address
              : updateAddressController.text,
          "postalCode": updatePostCodeController.text.isEmpty
              ? postalCode
              : updatePostCodeController.text,
          "mobileNumber": updatePhoneController.text.isEmpty
              ? mobileNumber
              : updatePhoneController.text,
          "image": fileURL == '' ? image : fileURL,
        },
      );
      if (resE != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile Updated'),
            duration: Duration(seconds: 2),
            backgroundColor: Color(0xFF00C853),
          ),
        );
      } else {
        print('error');
      }
    });
  }
  // Let's make a function for logout

  Future<void> logoutUser() async {
    await _auth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offAll(const LoginScreen());
  }

// send email for reset password
  Future sendPasswordResetEmail() async {
    await _auth
        .sendPasswordResetEmail(email: forgotEmailController.text.trim())
        .then((value) {
          
        });
  }

  @override
  void onInit() {
    super.onInit();
    getUserDetails();
  }
}
