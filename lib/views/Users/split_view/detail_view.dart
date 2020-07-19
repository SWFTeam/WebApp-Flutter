import 'package:Web_backoffice/model/User.dart';
import 'package:Web_backoffice/model/user_alt.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final UserAlt user;

  const DetailView({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(user == null){
      return Center(child: Text(
        "No User Selected \n Please select one on the left"
      ),
    );
    }
    else{
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Text(
              'FirstName: ' + user?.firstname,
            ),
            Text(
              'Lastname: ' + user?.firstname,
            ),
            Text(
              'Mail: ' + user?.emailAddress,
            ),
          ],
        ),
      ),
    );
    }
  }
}