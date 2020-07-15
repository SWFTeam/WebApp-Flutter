import 'dart:convert';

import 'package:Web_backoffice/model/User.dart';
import 'package:http/http.dart' as http;


class Services {
  static Future<List<User>> getUsers() async {
    final res =  await http.get("https://next.json-generator.com/api/json/get/Ek0HrAjAd");
      if (res.statusCode != 200){
        throw Error();
      }
      final jsonBody = json.decode(res.body);
      final List<User> users = [];
      users.addAll((jsonBody as List).map((user)=>User.fromJson(user)).toList());
      return users;
  }

}