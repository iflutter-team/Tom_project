import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(
  json.decode(str).map(
        (x) => User.fromJson(x),
  ),
);

String userToJson(List<User> data) => json.encode(
  List<dynamic>.from(
    data.map(
          (x) => x.toJson(),
    ),
  ),
);

class User {
  String? id;
  String? name;
  String? password;
  String? email;
  String? number;

  User({
    this.id,
    this.name,
    this.password,
    this.email,
    this.number,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      password: json["password"],
      email: json["email"],
      number: json["number"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "password": password,
    "email": email,
    "number": number,
  };
}
