import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ChallengesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "Chalenges page",
      body: Center(
        child: Text('This is the Challenge Managment page'),
      ),
    );
  }
}