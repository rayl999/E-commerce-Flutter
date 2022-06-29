
import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.accessToken,
    this.tokenType,
    this.createdAtUtc,
    this.expiresAtUtc,
    this.username,
    this.customerId,
    this.customerGuid,
  });

  String? accessToken;
  String? tokenType;
  DateTime? createdAtUtc;
  DateTime? expiresAtUtc;
  String? username;
  int? customerId;
  String? customerGuid;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        accessToken: json["access_token"] ?? "",
        tokenType: json["token_type"] ?? "",
        createdAtUtc: DateTime.parse(json["created_at_utc"]),
        expiresAtUtc: DateTime.parse(json["expires_at_utc"]),
        username: json["username"] ?? "",
        customerId: json["customer_id"] ?? -1,
        customerGuid: json["customer_guid"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "created_at_utc": createdAtUtc!.toIso8601String(),
        "expires_at_utc": expiresAtUtc!.toIso8601String(),
        "username": username,
        "customer_id": customerId,
        "customer_guid": customerGuid,
      };
}
