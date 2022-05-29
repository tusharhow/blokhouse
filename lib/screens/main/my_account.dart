import 'dart:io';

import 'package:blokhouse/controllers/auth_controllers.dart';
import 'package:blokhouse/screens/help_and_communication/help_and_communication_screen.dart';
import 'package:blokhouse/screens/my_bank_information.dart';
import 'package:blokhouse/screens/my_contact_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/navigate.dart';
import '../add_new_listing.dart';
import '../list_in_marketarea.dart';
import '../settings/settings.dart';
import 'messages_screen.dart';
import 'my_wallet.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthControllers authControllers = AuthControllers();
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff00A9FF),
              Color(0xff8ED9FF),
            ]),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ListTile(
                title: const Text(
                  'Giriş yap - Kayıt ol',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/log.png'),
                onTap: () {
                  authControllers.logoutUser();
                },
              ),
              ListTile(
                title: const Text(
                  'Cüzdan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/wal.png'),
                onTap: () {
                  push(context: context, widget: MyWallet());
                },
              ),
              ListTile(
                title: const Text(
                  'Pazar alanı',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/shop2.png'),
                onTap: () {
                  push(context: context, widget: const ListInMarketArea());
                },
              ),
              ListTile(
                title: const Text(
                  'İlanlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/ho.png'),
                onTap: () {
                  push(context: context, widget: const AddNewListing());
                },
              ),
              ListTile(
                title: const Text(
                  'Hesabım',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/u.png'),
                onTap: () {
                  push(context: context, widget: const MyScreen());
                },
              ),
              ListTile(
                title: const Text(
                  'Mesajlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/me.png'),
                onTap: () {
                  push(context: context, widget: const MessagesScreen());
                },
              ),
              ListTile(
                title: const Text(
                  'Ayarlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/sea.png'),
                onTap: () {
                  push(context: context, widget: const SettingsScreen());
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child:
                    Image.asset('assets/icons/noti.png', height: 25, width: 25),
              )),
        ],
        title: const Text(
          'Hesabım',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.menu, color: Colors.black),
        //   onPressed: () {
        //     _scaffoldKey.currentState!.openDrawer();
        //   },
        // ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<AuthControllers>(
            init: AuthControllers(),
            builder: (cont) {
              return Column(
                children: [
                cont.image == null
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child:  cont.image == null
                                  ? Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icons/user.png',
                                          height: 70,
                                          width: 70,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Image.network(
                                      cont.image.toString(),
                                      height: 150,
                                      width: 150,
                                    ),
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cont.updateNameController == '' ? '' : cont.name.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(context: context, widget: MyWallet());
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
                                  'assets/icons/wallet.png',
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Cüzdanım',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(
                          context: context,
                          widget: const MyContactInformation());
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
                                  'assets/icons/edit.png',
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'İletişim bilgilerim',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(context: context, widget: MyBankInformation());
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
                                  'assets/icons/bank.png',
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Banka bilgilerim',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(context: context, widget: SettingsScreen());
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
                                  'assets/icons/settings.png',
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Ayarlar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(
                          context: context,
                          widget: HelpAndCommunicationScreen());
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
                                  'assets/icons/info.png',
                                  color: Colors.black45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Yardım & İletişim',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
