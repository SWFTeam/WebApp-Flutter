import 'package:Web_backoffice/app/constants.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ChallengeDetail extends StatelessWidget {
 /* final Description challenge;

  const ChallengeDetail({Key key, this.challenge}) : super(key: key);*/
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth(context),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.red),
                top: BorderSide(width: 2.0, color: Colors.red),
                left: BorderSide(width: 2.0, color: Colors.red),
                right: BorderSide(width: 2.0, color: Colors.red),
              )
            ),
            child: Row(
              children: [
                Text(
                  "Title: ",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  "My Title",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          )
        ],
      ), pageTitle: "Challenge Detail",
    );
  }
}