import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.id,
        this.user,
        this.needs,
    });

    String id;
    UserClass user;
    Needs needs;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        user: UserClass.fromJson(json["user"]),
        needs: Needs.fromJson(json["needs"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user.toJson(),
        "needs": needs.toJson(),
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

class UserClass {
    UserClass({
        this.firstname,
        this.lastname,
        this.emailAddress,
        this.password,
        this.address,
        this.birthday,
        this.addressWork,
    });

    String firstname;
    String lastname;
    String emailAddress;
    String password;
    Address address;
    String birthday;
    Address addressWork;

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        firstname: json["firstname"],
        lastname: json["lastname"],
        emailAddress: json["email_address"],
        password: json["password"],
        address: Address.fromJson(json["address"]),
        birthday: json["birthday"],
        addressWork: Address.fromJson(json["address_work"]),
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "email_address": emailAddress,
        "password": password,
        "address": address.toJson(),
        "birthday": birthday,
        "address_work": addressWork.toJson(),
    };
}

class Address {
    Address({
        this.country,
        this.city,
        this.street,
        this.zipCode,
        this.nbHouse,
        this.complement,
    });

    String country;
    String city;
    String street;
    int zipCode;
    int nbHouse;
    String complement;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        country: json["country"],
        city: json["city"],
        street: json["street"],
        zipCode: json["zip_code"],
        nbHouse: json["nb_house"],
        complement: json["complement"],
    );

    Map<String, dynamic> toJson() => {
        "country": country,
        "city": city,
        "street": street,
        "zip_code": zipCode,
        "nb_house": nbHouse,
        "complement": complement,
    };
}