import 'dart:convert';
import 'dart:io';

import 'package:Web_backoffice/mocking/user_response_mock.dart';
import 'package:Web_backoffice/model/User.dart';
import 'package:Web_backoffice/model/user_alt.dart';
import 'package:http/http.dart' as http;


class Services {
  static Future<List<User>> getUsers() async {
    final res =  await http.get(
        'https://next.json-generator.com/api/json/get/Ek0HrAjAd?delay=2000',
      /*headers: {
          HttpHeaders.authorizationHeader:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiaWF0IjoxNTk0ODgyMzY1LCJleHAiOjE1OTQ5Njg3NjV9.sRPd6OGRNQotPKDmtZLmL10poJzbIfPUXZHGMcVJk_Q",
      },*/
    );
      if (res.statusCode != 200){
        print(res);
        throw Error();
      }
     // final res = await mockUser();
      final jsonBody = json.decode(res.body);
      final List<User> users = [];
      users.addAll((jsonBody as List).map((user)=>User.fromJson(user)).toList());
      //print(users);
      return users;
  }

}