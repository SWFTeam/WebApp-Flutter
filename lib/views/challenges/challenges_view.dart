import 'package:Web_backoffice/app/routes_names.dart';
import 'package:Web_backoffice/views/challenges/challenge_item.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ChallengesView extends StatelessWidget {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "Chalenges and Advices page",
      body: DataTable(
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
                    Text("Go eat Bananas in charlemagnes house")
                ),
                DataCell(
                    Text("13/48/3049"),
                ),
                DataCell(
                  Text("Humanitarian"),
                ),
                DataCell(
                  FlatButton(
                    child: Text(
                      "Expand"
                    ),
                    onPressed: ()=>{
                      Navigator.pushNamed(
                          context,
                          RoutesNames.challengeDetail)
                    },
                  ),
                ),
              ],
            ),
        ]),
      );
  }
}