import 'package:Web_backoffice/Sampling/donut_pie_chart.dart';
import 'package:flutter/material.dart';

class DataAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: MyHomePage()
            );
  }
}