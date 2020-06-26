import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width/5,
          color: Colors.deepPurple[200],
          child: SideBarButton(
            name: "Usage Data",
            icone: Icons.timer,
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width/5,
          color: Colors.deepPurple[200],
          child: SideBarButton(
            name: "Crash Report",
            icone: Icons.timer,
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width/5,
          color: Colors.deepPurple[200],
          child: SideBarButton(
            name: "Data Analysis",
            icone: Icons.timer,
          ),
        ),
      ],
    );
  }
}


class SideBarButton extends StatelessWidget {

  final String name;
  final IconData icone;

  const SideBarButton({
    Key key, 
    this.name, 
    this.icone, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        //Navigator.push();
      },
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          this.icone
        ),
        //Padding(padding: EdgeInsets.all(16.0)),
        Text(
          this.name
        ),
        ],
      ),
    );
  }
}