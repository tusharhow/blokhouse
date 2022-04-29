import 'package:blokhouse/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/radio_list_tile/gf_radio_list_tile.dart';
import 'package:getwidget/types/gf_radio_type.dart';

class UsersOptionsScreen extends StatefulWidget {
  const UsersOptionsScreen({Key? key}) : super(key: key);

  @override
  State<UsersOptionsScreen> createState() => _UsersOptionsScreenState();
}

class _UsersOptionsScreenState extends State<UsersOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    int groupValue = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'User Options',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          GFRadioListTile(
            titleText: 'Radio option here...',
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 0,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 20,
            indent: 20,
          ),
          GFRadioListTile(
            titleText: 'Radio option here...',
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 20,
            indent: 20,
          ),
          GFRadioListTile(
            titleText: 'Radio option here...',
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 20,
            indent: 20,
          ),
          GFRadioListTile(
            titleText: 'Radio option here...',
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 20,
            indent: 20,
          ),
          GFRadioListTile(
            titleText: 'Radio option here...',
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          SizedBox(
            height: 70,
          ),
          PrimaryButton(
              btnColor: Color(0xff00A9FF),
              btnText: 'I love it!',
              btnTextColor: Colors.white,
              onPressed: () {})
        ],
      ),
    );
  }
}
