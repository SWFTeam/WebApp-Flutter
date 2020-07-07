import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class IssuesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "Issues Page",
      body: Center(
        child: Text('This is the Issues Managment Page'),
      ),
    );
  }
}