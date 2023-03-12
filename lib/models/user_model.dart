import 'dart:convert';

class User {
  User({
    required this.email,
    required this.fullName,
    required this.companyName,
    required this.password,
    this.phone,
    this.avatar,
    this.address,
    required this.id,
    required this.isActive,
    required this.roles,
  });

  String email;
  String fullName;
  String companyName;
  String password;
  dynamic phone;
  dynamic avatar;
  dynamic address;
  String id;
  bool isActive;
  List<String> roles;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) {
    print('json user from map: $json');
    return User(
      email: json["email"],
      fullName: json["fullName"],
      companyName: json["companyName"],
      password: json["password"],
      phone: json["phone"],
      avatar: json["avatar"],
      address: json["address"],
      id: json["id"],
      isActive: json["isActive"],
      roles: List<String>.from(json["roles"].map((x) => x)),
    );
  }
  Map<String, dynamic> toMap() => {
        "email": email,
        "fullName": fullName,
        "companyName": companyName,
        "password": password,
        "phone": phone,
        "avatar": avatar,
        "address": address,
        "id": id,
        "isActive": isActive,
        "roles": List<dynamic>.from(roles.map((x) => x)),
      };
}
