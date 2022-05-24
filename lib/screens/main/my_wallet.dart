import 'package:flutter/material.dart';

import '../../components/navigate.dart';
import '../add_new_listing.dart';
import '../blok_sat_screen.dart';
import '../blol_al_screen.dart';
import '../list_in_marketarea.dart';
import '../settings.dart';
import 'messages_screen.dart';
import 'my_account.dart';

class MyWallet extends StatelessWidget {
  MyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawerEnableOpenDragGesture: false,
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
                  Navigator.pop(context);
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
                  push(context: context, widget: ListInMarketArea());
                },
              ),
              ListTile(
                title: Text(
                  'İlanlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/ho.png'),
                onTap: () {
                  push(context: context, widget: AddNewListing());
                },
              ),
              ListTile(
                title: Text(
                  'Hesabım',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/u.png'),
                onTap: () {
                  push(context: context, widget: MyScreen());
                },
              ),
              ListTile(
                title: Text(
                  'Mesajlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                leading: Image.asset('assets/icons/me.png'),
                onTap: () {
                  push(context: context, widget: MessagesScreen());
                },
              ),
              ListTile(
                title: Text(
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
        backgroundColor: Colors.blue,
        elevation: 1,
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/icons/noti.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                ),
              )),
        ],
        title: const Text(
          'Cüzdanım',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     _scaffoldKey.currentState!.openDrawer();
        //   },
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff00A9FF),
                        Color(0xffCFEFFF),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        'assets/icons/cuz.png',
                      )
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 20),
                      //   child: Text(
                      //     'Toplam bakiye :',
                      //     style: TextStyle(
                      //       fontSize: 14,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 5),
                      //   child: Text(
                      //     '12.960,00TL',
                      //     style: TextStyle(
                      //       fontSize: 35,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 20),
                      //   child: Text(
                      //     'Aktif yatırım :',
                      //     style: TextStyle(
                      //       fontSize: 14,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 5),
                      //   child: Text(
                      //     '9.960TL',
                      //     style: TextStyle(
                      //       fontSize: 30,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 240),
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/box2.png',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      push(
                                          context: context,
                                          widget: BlokAlScreen());
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'BLOK al',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/box2.png',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      push(
                                          context: context,
                                          widget: BlokSatScreen());
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'BLOK sat',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Yatırımlarım',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 250,
                                    width:
                                        MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/im7.png',
                                          height: 170,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'BLOK adedi :',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Güncel değer :',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '6.960TL',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      child: Center(
                                        child: Text('+%19,6',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 250,
                                    width:
                                        MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/im8.png',
                                          height: 170,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'BLOK adedi :',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Güncel değer :',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '6.960TL',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      child: Center(
                                        child: Text('+%19,6',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
