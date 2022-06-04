import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatConroller extends GetxController {
  final TextEditingController messageController = TextEditingController();
  final TextEditingController replyController = TextEditingController();
// chat with users
  Future sendMessage(String message, String senderId) async {
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    await _firestore
        .collection('messages')
        .doc(_auth.currentUser!.uid)
        .collection('chats')
        .doc(_auth.currentUser!.uid)
        .collection('chats')
        .doc(senderId)
        .set({
      'message': message,
      'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
      'senderId': senderId,
      'reply': replyController.text,
    });
    await _firestore
        .collection('messages')
        .doc(_auth.currentUser!.uid)
        .collection('chats')
        .doc(senderId)
        .collection('chats')
        .doc(_auth.currentUser!.uid)
        .set({
      'message': message,
      'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
      'senderId': senderId,
      'reply': replyController.text,
    });
  }
}
