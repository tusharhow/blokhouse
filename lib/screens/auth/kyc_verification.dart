import 'dart:io';

import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/bottom_nav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/primary_button.dart';
import '../help_and_communication/support_screen.dart';

class KYCVerification extends StatefulWidget {
  const KYCVerification({Key? key}) : super(key: key);

  @override
  State<KYCVerification> createState() => _KYCVerificationState();
}

class _KYCVerificationState extends State<KYCVerification> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/logos/logo2.png'),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return bottomSheet(context);
                    });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/icons/user.png',
                            color: Colors.black45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Kimlik veya pasaport yükle',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/icons/home2.png',
                            color: Colors.black45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'İkametgah - adres doğrulama belgesi yükle',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/icons/cam.png',
                            color: Colors.black45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Fotoğraf makinesi ile çek',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CheckboxListTile(
              title: const Text(
                "I would like to receive your newsletter and other promotional information.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              value: _isChecked,
              onChanged: (newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                btnColor: const Color(0xff00A9FF),
                btnText: 'Kimlik doğrula',
                btnTextColor: Colors.white,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                            title: Text('Tebrikler ! 🎉'),
                            content: Text(
                                'Belgeleriniz ekibimiz tarafından\ndoğrulandıktan sonra, bir onay maili ile\nhesabınızı aktif hale getirebileceksiniz. '),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('Anasayfaya'),
                                onPressed: () {
                                  push(
                                      context: context, widget: HomePageMain());
                                },
                              ),
                            ],
                          ));
                }),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (() {
                      push(context: context, widget: SupportScreen());
                    }),
                    child: Text(
                      'Yardım',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    'Şifremi unuttum',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget bottomSheet(con) {
  return Container(
    height: 200.0,
    width: MediaQuery.of(con).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Belgelerinizi yükleyin",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Yüklediğiniz belgelerin okunabilir ve\norijinal belgeler olduğundan emin olunuz.",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        PrimaryButton(
          btnColor: const Color(0xff00A9FF),
          btnText: 'Fotoğraf galerimden yükle',
          btnTextColor: Colors.white,
          onPressed: () {},
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            ImagePicker imagePicker = ImagePicker();
            imagePicker.pickImage(source: ImageSource.camera).then((value) {
              Navigator.pop(con);
            });
          },
          child: const Text(
            "Fotoğraf makinesi ile çek",
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0xff00A9FF),
            ),
          ),
        ),
      ],
    ),
  );
}
