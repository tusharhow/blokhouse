import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatConroller extends GetxController {
  final TextEditingController messageController = TextEditingController();
// chat with users
  Future sendMessage(String senderId) async {
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    _firestore
        .collection('chatWithUser')
        .doc(_auth.currentUser!.uid)
        .collection('chats')
        .add({
      'userId': senderId,
      'message': messageController.text,
      'reply': '',
      'createdAt': DateTime.now(),
    });
    messageController.clear();
  }

  //my chat list
  Future getMyChatList() async {
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    final _user = _auth.currentUser;
    final _myChatList = await _firestore
        .collection('chatWithUser')
        .doc(_user!.uid)
        .collection('chats')
        .get();
    print('///${_myChatList.docs.length}');
    update();
    return _myChatList.docs;
  }

  @override
  void onInit() {
    super.onInit();
    getMyChatList();
  }
}
