import 'package:Web_backoffice/Routes/data_analysis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Side_Bar/side_bar.dart';

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
         Expanded(
           flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(80, 255, 232, 100), Color.fromRGBO(59, 254, 78, 100)],
                )
              ),
              child: SideBar(),
            ),
         ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellow[100],
              child: DataAnalysis(),
            ),
          ),

      ],
    );
  }
}