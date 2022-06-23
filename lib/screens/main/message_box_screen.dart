import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/controllers/chat/chat_controller.dart';
import 'package:blokhouse/screens/main/messages_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_new_listing.dart';
import '../list_in_marketarea.dart';
import '../settings/settings.dart';
import 'my_account.dart';
import 'my_wallet.dart';

class MessageBoxScreen extends StatelessWidget {
  const MessageBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final chatController = Get.put(ChatConroller());
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
        title: Text(
          'Mesajlar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.menu, color: Colors.black),
        //   onPressed: () {
        //     // _scaffoldKey.currentState!.openDrawer();
        //   },
        // ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: chatController.chatList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatController.chatList[index].message),
                    subtitle: Text(chatController.chatList[index].reply),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: MessagesScreen());
              },
              child: Container(
                // height: 100,
                child: Row(
                  children: [
                    Image.asset('assets/images/user3.png',
                        height: 50, width: 50),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ronald Robertson',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/arr.png',
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                        Text(
                          'An suas viderer pro. Vis cu magna altera,\nex his vivendo atomorum.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: const MessagesScreen());
              },
              child: Container(
                // height: 100,
                child: Row(
                  children: [
                    Image.asset('assets/images/user4.png',
                        height: 50, width: 50),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ronald Robertson',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/arr.png',
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                        Text(
                          'An suas viderer pro. Vis cu magna altera,\nex his vivendo atomorum.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                push(context: context, widget: MessagesScreen());
              },
              child: Container(
                // height: 100,
                child: Row(
                  children: [
                    Image.asset('assets/images/user5.png',
                        height: 50, width: 50),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ronald Robertson',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/arr.png',
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
                        Text(
                          'An suas viderer pro. Vis cu magna altera,\nex his vivendo atomorum.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
            height: 25,
          ),
        ],
      )),
    );
  }
}
