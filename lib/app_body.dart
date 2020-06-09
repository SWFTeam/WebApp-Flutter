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
              color: Colors.deepPurple,
              child: SideBar(),
            ),
         ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellow[100],
              
            ),
          ),

      ],
    );
  }
}