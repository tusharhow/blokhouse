import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/add_new_listing.dart';
import 'package:blokhouse/screens/ads_details_page.dart';
import 'package:blokhouse/screens/list_in_marketarea.dart';
import 'package:blokhouse/screens/main/messages_screen.dart';
import 'package:blokhouse/screens/main/my_wallet.dart';
import 'package:blokhouse/screens/settings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'message_box_screen.dart';
import 'my_account.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  int _currentIndex = 0;

  List<String> offerImage = [
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
  ];
  List<String> offerImage2 = [
    'assets/images/im3.png',
    'assets/images/im3.png',
    'assets/images/im3.png',
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    /// initialized [conroller] after the screen is loaded
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    /// [conroller] remove from the widget tree permanantly after the screen is closed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
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
                title: Text(
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
                title: Text(
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
                title: Text(
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
                  push(context: context, widget: MessageBoxScreen());
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
                  push(context: context, widget: SettingsScreen());
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
          'İlanlar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: const [
                  Text(
                    'Öne çıkanlar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width / 1.12,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: controller,
                    itemCount: offerImage.length,
                    scrollDirection:
                        Axis.horizontal, // scrolling direction of image
                    physics: const ScrollPhysics(), // scrolling behaviour
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, i1) {
                      return GestureDetector(
                        onTap: () {
                          push(context: context, widget: AdsDetailsPage());
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                offerImage[i1], // List of Offers precentages
                                width: MediaQuery.of(context).size.width,
                                colorBlendMode: BlendMode.softLight,
                                color: Colors.black.withOpacity(0.8),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 75,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'son 8 gün',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 80, left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text(
                                            'Beşiktaş Abbasağa’da\n1+1 ferah daire.',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1.900.000TL',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ), //  end offers
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 15, // Position form Bottom
                    right: 80, // Position from Right
                    child: SizedBox(
                      height: 15,
                      child: ListView.builder(
                        itemCount: offerImage.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int i2) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 5,
                              width: 25,
                              decoration: _currentIndex == i2
                                  ? BoxDecoration(
                                      color: Colors
                                          .white, // Selected Slider Indicator Color
                                      borderRadius: BorderRadius.circular(15))
                                  : BoxDecoration(
                                      color: Colors
                                          .white54, // Unselected Slider Indicator Color
                                      shape: BoxShape
                                          .circle // shape of Unselected indicator
                                      ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Yüksek kira getirili...',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    push(context: context, widget: AdsDetailsPage());
                  },
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/im1.png',
                            // width: MediaQuery.of(context).size.width / 1.8,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              height: 25,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '7.500TL / aylık',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/im2.png',
                            // width: MediaQuery.of(context).size.width / 1.8,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              height: 25,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '12.500TL / aylık',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Yüksek kira getirili...',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width / 1.12,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: controller,
                    itemCount: offerImage2.length,
                    scrollDirection:
                        Axis.horizontal, // scrolling direction of image
                    physics: const ScrollPhysics(), // scrolling behaviour
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, i1) {
                      return GestureDetector(
                        onTap: () {
                          push(context: context, widget: AdsDetailsPage());
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                offerImage2[i1], // List of Offers precentages
                                width: MediaQuery.of(context).size.width,
                                colorBlendMode: BlendMode.softLight,
                                color: Colors.black.withOpacity(0.8),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 75,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'son 8 gün',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 50, left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text(
                                            'Beşiktaş Abbasağa’da\n1+1 ferah daire.',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1.900.000TL',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ), //  end offers
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 40, // Position form Bottom
                    right: 90, // Position from Right
                    child: SizedBox(
                      height: 15,
                      child: ListView.builder(
                        itemCount: offerImage2.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int i2) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 5,
                              width: 25,
                              decoration: _currentIndex == i2
                                  ? BoxDecoration(
                                      color: Colors
                                          .white, // Selected Slider Indicator Color
                                      borderRadius: BorderRadius.circular(15))
                                  : BoxDecoration(
                                      color: Colors
                                          .white54, // Unselected Slider Indicator Color
                                      shape: BoxShape
                                          .circle // shape of Unselected indicator
                                      ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
