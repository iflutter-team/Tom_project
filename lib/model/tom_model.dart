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
  String? email;
  String? number;
  String? password;



  User({
    this.id,
    this.name,
    this.email,
    this.number,
    this.password
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      number: json["number"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "number": number,
    "password": password,
  };
}
