import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'main/home_page.dart';
import 'main/marketplace.dart';
import 'main/message_box_screen.dart';
import 'main/my_account.dart';
import 'main/my_wallet.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  int _selectedIndex = 0;

  final screens = [
    MyScreen(),
    MarketPlace(),
    MyHomePage(),
    MessageBoxScreen(),
    MyWallet(),
  ];

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        // key: scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/user.png"),
                    // color: Colors.black38,
                  ),
                  label: 'Hesabım',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/shop.png"),
                  ),
                  label: 'Pazar alanı',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/home2.png"),
                  ),
                  label: 'İlanlar',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/messages.png"),
                  ),
                  label: 'Mesajlar',
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/wallet.png"),
                  ),
                  label: 'Cüzdan',
                  backgroundColor: Colors.transparent),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black38,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.black38,
            ),
            iconSize: 40,
            onTap: (index) => setState(() {
                  _selectedIndex = index;
                }),
            elevation: 5),
        body: screens[_selectedIndex]);
  }
}
