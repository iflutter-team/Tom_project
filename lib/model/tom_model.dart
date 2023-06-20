import 'dart:convert';

List<Data> dataFromJson(String str) =>
    List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  String? name;
  String? email;
  String? number;
  String? password;
  String? confirmPassword;
  String? personalID;

  Data({
    this.name,
    this.email,
    this.number,
    this.password,
    this.confirmPassword,
    this.personalID,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        email: json["email"],
        number: json["number"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        personalID: json["personalID"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "number": number,
        "password": password,
        "confirmPassword": confirmPassword,
        "personalID": personalID,
      };
}
