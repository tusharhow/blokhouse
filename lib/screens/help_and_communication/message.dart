import 'package:blokhouse/controllers/help/chat_with_admin_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/recieve_message_screen.dart';
import '../../components/sent_message_screen.dart';
import '../../models/responses/bubble.dart';

class HelpMessage extends StatelessWidget {
  const HelpMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChatWithAdminController _chatWithAdminController =
        Get.put(ChatWithAdminController());
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Destek',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('messages')
                  .doc(_auth.currentUser!.uid)
                  .collection('chats')
                  .orderBy('createdAt', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  );
                }

                final messages = snapshot.data!.docs;
                List<MessageResponse> messageBubbles = [];
                for (var message in messages) {
                  final messageText = message['text'];
                  final messageSender = message['from'];
                  final reply = message['reply'];
                  final createdAt = message['createdAt'];

                  final messageBubble = MessageResponse(
                    from: messageSender,
                    text: messageText,
                    createdAt: createdAt.toString(),
                    reply: reply,
                  );
                  messageBubbles.add(messageBubble);
                }
                return Expanded(
                  // height: 620,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messageBubbles.length,
                    itemBuilder: (context, index) {
                      for (var message in messages) {
                        final messageText = message['text'];
                        final messageSender = message['from'];
                        final reply = message['reply'];

                        final createdAt = message['createdAt'];
                        final messageBubble = MessageResponse(
                          from: messageSender,
                          text: messageText,
                          createdAt: createdAt.toString(),
                          reply: reply,
                        );
                        messageBubbles.add(messageBubble);
                      }

                      return Column(
                        children: [
                          SentMessageScreen(
                            message: messageBubbles[index].text,
                          ),
                          messageBubbles[index].reply == ''
                              ? const SizedBox()
                              : ReceivedMessageScreen(
                                  message: messageBubbles[index].reply,
                                ),
                        ],
                      );
                    },
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: _chatWithAdminController.messageController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[400],
                hintText: 'Type a message',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      _chatWithAdminController.sendMessage(
                        _chatWithAdminController.messageController.text,
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.shade400,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
