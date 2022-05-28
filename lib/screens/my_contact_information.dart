import 'dart:io';

import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyContactInformation extends StatefulWidget {
  const MyContactInformation({Key? key}) : super(key: key);

  @override
  State<MyContactInformation> createState() => _MyContactInformationState();
}

class _MyContactInformationState extends State<MyContactInformation> {
  @override
  Widget build(BuildContext context) {
    AuthControllers authControllers = Get.put(AuthControllers());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'İletişim bilgilerim',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<AuthControllers>(
            init: AuthControllers(),
            builder: (cont) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          cont.pickImage();
                        },
                        child: cont.pickedImage == null
                            ? Stack(
                                children: [
                                  File(cont.image!.path) == ''
                                      ? Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[300],
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add_a_photo,
                                              size: 50,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        )
                                      : ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.network(
                                            cont.image!.path,
                                            height: 150,
                                            width: 150,
                                          ),
                                        ),
                                  File(cont.image!.path) == ''
                                      ? const SizedBox()
                                      : Positioned(
                                          bottom: 20,
                                          right: 55,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                ],
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  File(cont.pickedImage!.path),
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cont.updateNameController.text.isNotEmpty
                        ? cont.updateNameController.text
                        : cont.name.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'İsim',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller: authControllers.updateNameController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText:
                                  cont.updateNameController.text.isNotEmpty
                                      ? cont.updateNameController.text
                                      : cont.name.toString(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Doğum tarihi (dd/mm/yyyy)',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller: authControllers.updateDobController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText: cont.updateDobController.text.isNotEmpty
                                  ? cont.updateDobController.text
                                  : cont.dateOfBirth.toString(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Cinsiyet',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller: authControllers.updateCityController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText:
                                  cont.updateCityController.text.isNotEmpty
                                      ? cont.updateCityController.text
                                      : cont.city.toString(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Adres',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller: authControllers.updateAddressController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText:
                                  cont.updateAddressController.text.isNotEmpty
                                      ? cont.updateAddressController.text
                                      : cont.address.toString(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Şehir, İlçe',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller:
                              authControllers.updatePassportNumberController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText: cont.updatePassportNumberController.text
                                      .isNotEmpty
                                  ? cont.updatePassportNumberController.text
                                  : cont.passportNumber.toString(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Telefon numarası',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: TextFormField(
                          controller: authControllers.updatePhoneController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              hintText:
                                  cont.updatePhoneController.text.isNotEmpty
                                      ? cont.updatePhoneController.text
                                      : cont.mobileNumber.toString(),
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              suffixIcon: const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Değiştir',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (authControllers.pickedImage != null) {
                        authControllers.updateUserProfileAndSaveImage(context);
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Lütfen bir fotoğraf seçiniz'),
                          duration: Duration(seconds: 2),
                          backgroundColor:  Colors.red,
                        ));
                      }
             
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: const Color(0xff00A9FF),
                      ),
                      child: const Center(
                          child: Text(
                        'Kaydet',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
