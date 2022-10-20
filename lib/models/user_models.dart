// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);

import 'dart:convert';

User UserFromJson(String str) => User.fromJson(json.decode(str));

String UserToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.username,
    this.phone,
    this.password,
  });

  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? username;
  String? phone;
  String? password;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        username: json["username"],
        phone: json["phone"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "username": username,
        "phone": phone,
        "password": password,
      };
}
