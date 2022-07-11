// To parse this JSON data, do
//
//     final chatListModel = chatListModelFromJson(jsonString);

import 'dart:convert';

List<ChatListModel> chatListModelFromJson(String str) =>
    List<ChatListModel>.from(
        json.decode(str).map((x) => ChatListModel.fromJson(x)));

String chatListModelToJson(List<ChatListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChatListModel {
  ChatListModel({
    required this.createdAt,
    required this.message,
    required this.reply,
    required this.userId,
  });

  String createdAt;
  String message;
  String reply;
  String userId;

  factory ChatListModel.fromJson(Map<String, dynamic> json) => ChatListModel(
        createdAt: json["createdAt"],
        message: json["message"],
        reply: json["reply"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "message": message,
        "reply": reply,
        "userId": userId,
      };
}
