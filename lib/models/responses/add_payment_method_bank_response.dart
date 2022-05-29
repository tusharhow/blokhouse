// To parse this JSON data, do
//
//     final addPaymentMethodResponse = addPaymentMethodResponseFromJson(jsonString);

import 'dart:convert';

List<AddPaymentMethodBankResponse> addPaymentMethodBankResponseFromJson(
        String str) =>
    List<AddPaymentMethodBankResponse>.from(
        json.decode(str).map((x) => AddPaymentMethodBankResponse.fromJson(x)));

String addPaymentMethodResponseToJson(
        List<AddPaymentMethodBankResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddPaymentMethodBankResponse {
  AddPaymentMethodBankResponse({
    required this.bankName,
    required this.ibanNumber,
    required this.bankHolderName,
    required this.type,
    required this.bankAccountNumber,
  });

  String? bankName;
  String? ibanNumber;
  String? bankHolderName;
  String? type;
  String? bankAccountNumber;

  factory AddPaymentMethodBankResponse.fromJson(Map<String, dynamic> json) =>
      AddPaymentMethodBankResponse(
        bankName: json["bankName"],
        ibanNumber: json["ibanNumber"],
        bankHolderName: json["bankHolderName"],
        type: json["type"],
        bankAccountNumber: json["bankAccountNumber"],
      );

  Map<String, dynamic> toJson() => {
        "bankName": bankName,
        "ibanNumber": ibanNumber,
        "bankHolderName": bankHolderName,
        "type": type,
        "cardNumber": bankAccountNumber,
      };
}
