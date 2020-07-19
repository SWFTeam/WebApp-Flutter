import 'package:Web_backoffice/model/user_alt.dart';
import 'package:Web_backoffice/services/services.dart';
import 'package:Web_backoffice/views/Users/split_view/user_item.dart';
import 'package:flutter/material.dart';
class UserList extends StatelessWidget {
  final ValueChanged<UserAlt> userSelectedCallBack;

  const UserList({Key key, this.userSelectedCallBack}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Services.getUsers(),
      builder: (BuildContext context,  AsyncSnapshot snapshot){
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(
                  child: CircularProgressIndicator(),
                );
            break;
          case ConnectionState.done:
          if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }
                if (snapshot.hasData) {
                  final List<UserAlt> users = snapshot.data;
                  if (users.isEmpty) {
                    return Center(
                      child: Text("Empty list"),
                    );
                  }
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return UserItem(
                        user: users[index],
                        onTapp: () =>userSelectedCallBack(users[index]) ,
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text("No data"),
                  );
                }
              break;
          default:
          return Container();
                break;
        }
      }
    );
  }
}