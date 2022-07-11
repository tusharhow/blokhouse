// To parse this JSON data, do
//
//     final addPaymentMethodResponse = addPaymentMethodResponseFromJson(jsonString);

import 'dart:convert';

List<AddPaymentMethodResponse> addPaymentMethodResponseFromJson(String str) =>
    List<AddPaymentMethodResponse>.from(
        json.decode(str).map((x) => AddPaymentMethodResponse.fromJson(x)));

String addPaymentMethodResponseToJson(List<AddPaymentMethodResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddPaymentMethodResponse {
  AddPaymentMethodResponse({
    required this.expiryDate,
    required this.cvv,
    required this.cardHolderName,
    required this.type,
    required this.cardNumber,
  });

  String? expiryDate;
  String? cvv;
  String? cardHolderName;
  String? type;
  String? cardNumber;

  factory AddPaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      AddPaymentMethodResponse(
        expiryDate: json["expiryDate"].toString(),
        cvv: json["cvv"],
        cardHolderName: json["cardHolderName"],
        type: json["type"],
        cardNumber: json["cardNumber"],
      );

  Map<String, dynamic> toJson() => {
        "expiryDate": expiryDate,
        "cvv": cvv,
        "cardHolderName": cardHolderName,
        "type": type,
        "cardNumber": cardNumber,
      };
}
