import 'package:blokhouse/controllers/chat/chat_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/recieve_message_screen.dart';
import '../../components/sent_message_screen.dart';
import '../../models/responses/bubble.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatConroller = Get.put(ChatConroller());
    final _firestore = FirebaseFirestore.instance;
    final _user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Tushar',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
// chat with users
            StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('chatWithUser')
                    .doc(_user!.uid)
                    .collection('chats')
                    .doc("ddddddddd")
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
                    final messageText = message['message'];
                    final messageSender = message['reply'];
                    final createdAt = message['createdAt'];

                    final messageBubble = MessageResponse(
                      from: messageSender,
                      text: messageText,
                      createdAt: createdAt.toString(),
                      reply: messageSender,
                    );
                    messageBubbles.add(messageBubble);
                  }
                  return SizedBox(
                    height: 620,
                    child: ListView.builder(
                      reverse: true,
                      itemCount: messageBubbles.length,
                      itemBuilder: (context, index) {
                        for (var message in messages) {
                          final messageText = message['reply'];
                          final messageSender = message['reply'];
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
                controller: chatConroller.messageController,
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
                        chatConroller.sendMessage(
                          "ddddddddd",
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
      ),
    );
  }
}
