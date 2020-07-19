import 'dart:convert';
import 'dart:io';

import 'package:Web_backoffice/model/user_alt.dart';
import 'package:http/http.dart' as http;


class Services {
  static Future<List<UserAlt>> getUsers() async {
    final res =  await http.get(
        'https://next.json-generator.com/api/json/get/N14nUrhkK',
      headers: {
          HttpHeaders.authorizationHeader:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNTk0ODgyMzY1LCJleHAiOjE1OTQ5Njg3NjV9.sRPd6OGRNQotPKDmtZLmL10poJzbIfPUXZHGMcVJk_Q",
      },
    );
      if (res.statusCode != 200){
        print(res);
        throw Error();
      }
      final jsonBody = json.decode(res.body);
      final List<UserAlt> users = [];
      users.addAll((jsonBody as List).map((user)=>UserAlt.fromJson(user)).toList());
      print(users);
      return users;
  }

}