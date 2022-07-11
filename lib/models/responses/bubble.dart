// To parse this JSON data, do
//
//     final messageResponse = messageResponseFromJson(jsonString);

import 'dart:convert';

MessageResponse messageResponseFromJson(String str) => MessageResponse.fromJson(json.decode(str));

String messageResponseToJson(MessageResponse data) => json.encode(data.toJson());

class MessageResponse {
    MessageResponse({
       required   this.from,
      required  this.reply,
      required  this.text,
      required  this.createdAt,
    });

    String from;
    String reply;
    String text;
    String createdAt;

    factory MessageResponse.fromJson(Map<String, dynamic> json) => MessageResponse(
        from: json["from"],
        reply: json["reply"],
        text: json["text"],
        createdAt: json["createdAt"],
    );

    Map<String, dynamic> toJson() => {
        "from": from,
        "reply": reply,
        "text": text,
        "createdAt": createdAt,
    };
}
