// To parse this JSON data, do
//
//     final userAlt = userAltFromJson(jsonString);

import 'dart:convert';

List<UserAlt> userAltFromJson(String str) => List<UserAlt>.from(json.decode(str).map((x) => UserAlt.fromJson(x)));

String userAltToJson(List<UserAlt> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserAlt {
  UserAlt({
    this.id,
    this.firstname,
    this.lastname,
    this.emailAddress,
    this.password,
    this.birthday,
    this.addressId,
    this.surveyId,
    this.addressWork,
    this.isAdmin,
    this.lastLoginAt,
    this.createdAt,
  });

  int id;
  String firstname;
  String lastname;
  String emailAddress;
  String password;
  DateTime birthday;
  int addressId;
  int surveyId;
  int addressWork;
  dynamic isAdmin;
  DateTime lastLoginAt;
  DateTime createdAt;

  factory UserAlt.fromJson(Map<String, dynamic> json) => UserAlt(
    id: json["id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    emailAddress: json["email_address"],
    password: json["password"],
    birthday: json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
    addressId: json["address_id"],
    surveyId: json["survey_id"],
    addressWork: json["address_work"] == null ? null : json["address_work"],
    isAdmin: json["isAdmin"],
    lastLoginAt: json["last_login_at"] == null ? null : DateTime.parse(json["last_login_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstname": firstname,
    "lastname": lastname,
    "email_address": emailAddress,
    "password": password,
    "birthday": birthday == null ? null : birthday.toIso8601String(),
    "address_id": addressId,
    "survey_id": surveyId,
    "address_work": addressWork == null ? null : addressWork,
    "isAdmin": isAdmin,
    "last_login_at": lastLoginAt == null ? null : lastLoginAt.toIso8601String(),
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
  };
}
