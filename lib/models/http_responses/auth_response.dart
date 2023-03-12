// To parse this JSON data, do
//
//     final authResponse = authResponseFromJson(jsonString);

import 'dart:convert';

import 'package:mockup_caja_vecina/models/models.dart';

class AuthResponse {
  AuthResponse({
    required this.user,
    required this.token,
  });

  User user;
  String token;

  factory AuthResponse.fromJson(String str) =>
      AuthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromMap(Map<String, dynamic> json) {
    return AuthResponse(
      user: User.fromMap(json['user']),
      token: json["token"],
    );
  }
  Map<String, dynamic> toMap() => {
        "usuario": user.toMap(),
        "token": token,
      };
}
