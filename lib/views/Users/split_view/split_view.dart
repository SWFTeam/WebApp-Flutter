import 'package:Web_backoffice/model/User.dart';
import 'package:Web_backoffice/model/user_alt.dart';
import 'package:flutter/material.dart';
import 'detail_view.dart';
import 'list_view.dart';

class SplitView extends StatefulWidget {
  @override
  _SplitViewState createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
  UserAlt _selectedUser;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: UserList(
            userSelectedCallBack: (user){
              setState(() {
                _selectedUser = user;
              });
            },
          )
        ),
        Flexible(
          flex: 3,
          child: DetailView(
            user: _selectedUser
          ),
        ),
      ],
    );
  }
}