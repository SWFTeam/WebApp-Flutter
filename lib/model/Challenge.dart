// To parse this JSON data, do
//
//     final challenge = challengeFromJson(jsonString);

import 'dart:convert';

Challenge challengeFromJson(String str) => Challenge.fromJson(json.decode(str));

String challengeToJson(Challenge data) => json.encode(data.toJson());

class Challenge {
  Challenge({
    this.challenge,
  });

  ChallengeClass challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) => Challenge(
    challenge: ChallengeClass.fromJson(json["challenge"]),
  );

  Map<String, dynamic> toJson() => {
    "challenge": challenge.toJson(),
  };
}

class ChallengeClass {
  ChallengeClass({
    this.descriptions,
    this.experience,
    this.needs,
  });

  List<Description> descriptions;
  int experience;
  Needs needs;

  factory ChallengeClass.fromJson(Map<String, dynamic> json) => ChallengeClass(
    descriptions: List<Description>.from(json["descriptions"].map((x) => Description.fromJson(x))),
    experience: json["experience"],
    needs: Needs.fromJson(json["needs"]),
  );

  Map<String, dynamic> toJson() => {
    "descriptions": List<dynamic>.from(descriptions.map((x) => x.toJson())),
    "experience": experience,
    "needs": needs.toJson(),
  };
}

class Description {
  Description({
    this.countryCode,
    this.title,
    this.name,
    this.description,
    this.type,
  });

  String countryCode;
  String title;
  String name;
  String description;
  String type;

  factory Description.fromJson(Map<String, dynamic> json) => Description(
    countryCode: json["country_code"],
    title: json["title"],
    name: json["name"],
    description: json["description"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "country_code": countryCode,
    "title": title,
    "name": name,
    "description": description,
    "type": type,
  };
}

class Needs {
  Needs({
    this.hasBike,
    this.hasCar,
  });

  bool hasBike;
  bool hasCar;

  factory Needs.fromJson(Map<String, dynamic> json) => Needs(
    hasBike: json["hasBike"],
    hasCar: json["hasCar"],
  );

  Map<String, dynamic> toJson() => {
    "hasBike": hasBike,
    "hasCar": hasCar,
  };
}