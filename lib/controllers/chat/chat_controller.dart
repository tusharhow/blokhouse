import 'dart:convert';

import 'package:blokhouse/models/chat_list_model.dart';
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
        .doc(senderId)
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
    update();
    return _myChatList.docs;
  }

  // get user name with user id
  Future getUserName() async {
    final _firestore = FirebaseFirestore.instance;
    final _user = await _firestore
        .collection('users')
        .doc('YG1lji47LDgsT7vxLBAirMWtNbl2')
        .get();
    print('///${_user.data()!['name']}');
    update();
    return _user.data()!['name'];
  }

// get user name and chat all list with user id
  List<ChatListModel> chatList = [];
  Future getChatList() async {
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    final _user = _auth.currentUser;
    final _chatList = await _firestore
        .collection('chatWithUser')
        .doc(_user!.uid)
        .collection('chats')
        .get();
    for (var chat in _chatList.docs) {
      final _userId = chat.data()['userId'];
      final _userName = await getUserName();
      final _chatListModel = ChatListModel(
        createdAt: chat.data()['createdAt'].toString(),
        userId: _userId,
        message: chat.data()['message'],
        reply: chat.data()['reply'],
      );
      chatList.add(_chatListModel);
      print(chatList.length);
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getMyChatList();
    getUserName();
    getChatList();
  }
}
