import 'dart:developer';

import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/settings/distance_selling_contract.dart';
import 'package:blokhouse/screens/settings/privacy_policy.dart';
import 'package:blokhouse/screens/settings/service_agrement.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Ayarlar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
  
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: GFToggle(
                  enabledTrackColor: Colors.blue,
                  onChanged: (val) {},
                  value: true,
                  type: GFToggleType.ios,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() {
              push(context: context, widget: const ServiceAgreement());
            }),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Services agreement',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              push(context: context, widget: const DistanceSellingContract());
            },
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Mesafeli satış sözleşmesi',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              push(context: context, widget: const PrivacyPolicy());
            },
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Gizlilik politikası',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'About app.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  'v1.0',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
