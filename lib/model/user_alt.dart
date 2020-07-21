// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'dart:convert';

class UserResponse {
  UserResponse({
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
  int isAdmin;
  DateTime lastLoginAt;
  DateTime createdAt;

  factory UserResponse.fromRawJson(String str) => UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    id: json["id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    emailAddress: json["email_address"],
    password: json["password"],
    birthday: json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
    addressId: json["address_id"],
    surveyId: json["survey_id"],
    addressWork: json["address_work"] == null ? null : json["address_work"],
    isAdmin: json["isAdmin"] == null ? null : json["isAdmin"],
    lastLoginAt: json["last_login_at"] == null ? null : DateTime.parse(json["last_login_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstname": firstname,
    "lastname": lastname,
    "email_address": emailAddress,
    "password": password,
    "birthday": birthday == null ? null : birthday.toUtc(),
    "address_id": addressId,
    "survey_id": surveyId,
    "address_work": addressWork == null ? null : addressWork,
    "isAdmin": isAdmin == null ? null : isAdmin,
    "last_login_at": lastLoginAt == null ? null : lastLoginAt.toLocal(),
    "created_at": createdAt == null ? null : createdAt.toLocal(),
  };
}
