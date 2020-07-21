import 'package:Web_backoffice/model/User.dart';
import 'package:Web_backoffice/model/user_alt.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final User user;
  final Function onTapp;
  const UserItem({
    Key key,
    this.user,
    this.onTapp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text("${user?.user?.firstname} ${user?.user?.lastname}"),
      onTap: onTapp
    );
  }
}