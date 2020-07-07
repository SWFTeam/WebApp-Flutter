import 'package:Web_backoffice/app/constants.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ExperimentationView extends StatefulWidget {
  @override
  _ExperimentationViewState createState() => _ExperimentationViewState();
}

class _ExperimentationViewState extends State<ExperimentationView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      pageTitle: "Damn Boy we Test",
      body: Center(
        child: Container(
          height: screenHeight(
            context,
            dividedBy: 1.2),
          width: screenWidth(
            context,
            dividedBy: 1.5),
          color: Colors.blueAccent,
          ),
        ),
    );
  }
}