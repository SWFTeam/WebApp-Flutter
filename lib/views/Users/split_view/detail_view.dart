import 'package:Web_backoffice/model/User.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final User user;

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
              'FirstName: ' + user?.user?.firstname,
            ),
            Text(
              'Lastname: ' + user?.user?.firstname,
            ),
            Text(
              'Mail: ' + user?.user?.emailAddress,
            ),
            Text(
              'Adresse: ' + user?.user?.address?.street + ' ' + user?.user?.address?.city,
            ),
            Text(
              'Work adresse: ' + user?.user?.addressWork?.street + ' ' + user?.user?.addressWork?.city,
            ),
            Text(
              'Has a Bike ?: ' + user?.needs?.hasBike.toString(),
            ),
            Text(
              'Has a car ?: ' + user?.needs?.hasCar.toString(),
            ),
          ],
        ),
      ),
    );
    }
  }
}