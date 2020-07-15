import 'package:Web_backoffice/views/challenges/challenge_item.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ChallengesView extends StatelessWidget {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "Chalenges page",
      body: Center(
        child: DataTable(
          showCheckboxColumn: true,
            columns: [
              //DataColumn(label: Text("Select")),
              DataColumn(label: Text("title")),
              DataColumn(label: Text("Creation Date")),
              DataColumn(label: Text("Type")),
              DataColumn(label: Text("Expand")),
        ],
            rows: [
            DataRow(
              selected: value,
              onSelectChanged: (value)=>{
               if(value==true){
                 value = false
               }
               else{
                 value = true
               }
              },
              cells: [
                DataCell(
                    GestureDetector(
                        onTap: ()=>{print("This has Been tapped")},
                        child: Text("Title")
                    ),
                ),
                DataCell(
                    Text("Date"),
                ),
                DataCell(
                  Text("Type"),
                ),
                DataCell(
                  FlatButton(
                    child: Icon(
                      Icons.add,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
        ]),
      ),
    );
  }
}