import 'package:flutter/material.dart';

class CrashReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height,
              color: Colors.deepOrange,
            ),
    );
  }
}