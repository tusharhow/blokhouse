import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatWithAdminController extends GetxController {
// Chat with admin
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final TextEditingController messageController = TextEditingController();

  Future<void> sendMessage(String message) async {
    if (message.trim().isEmpty) {
      return;
    }
    try {
      await _firestore
          .collection('messages')
          .doc(_auth.currentUser!.uid)
          .collection('chats')
          .add({
        'text': message,
        'from': _auth.currentUser!.email,
        'createdAt': Timestamp.now(),
        'reply': '',
      });

      messageController.clear();
    } catch (e) {
      print(e);
    }
  }

  // get messages replay
  Stream<QuerySnapshot> get messages {
    final uid = _auth.currentUser!.uid;
    var messag =
        _firestore.collection('messages').doc(uid).collection('text').get();
    print(messag);
    return messag as Stream<QuerySnapshot>;
  }
}
