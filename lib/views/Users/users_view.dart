import 'package:Web_backoffice/views/Users/user_pie_chart/bike_pie_chart/bike_pie_chart.dart';
import 'package:Web_backoffice/views/Users/user_pie_chart/none_pie_chart/none_pie_chart.dart';
import 'package:Web_backoffice/views/Users/user_pie_chart/pie_chart.dart';
import 'package:Web_backoffice/views/Users/user_pie_chart/user_cars_pie_chart/cars_pie_chart.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:Web_backoffice/app/constants.dart';

import 'split_view/split_view.dart';

class UsersView extends StatefulWidget {
  @override
  _UsersViewState createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  int selectedDataSet;
  Widget currentChart = UserPieChart();
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "User Page",
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: screenHeight(
                  context,
                  dividedBy: 2),
                width: screenWidth(
                  context,
                  dividedBy: 2.5),
                child: SplitView(),
                margin: EdgeInsets.symmetric(horizontal: 5),
              ),
              Container(
                height: screenHeight(
                  context,
                  dividedBy: 2),
                width: screenWidth(
                  context,
                  dividedBy: 2.5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.deepPurple[100],
                          ),
                          child: FlatButton(
                            onPressed: () => {
                              setState((){
                                this.selectedDataSet = 1;
                                print("Selected data Set  = 1");
                                currentChart = UserPieChart();
                              })
                            },
                            child: Text('Both'),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.yellow[100],
                          ),
                          child: FlatButton(
                            onPressed: () => {
                              setState((){
                                this.selectedDataSet = 2;
                                print("Selected data Set  = 2");
                                currentChart = UserCarsPieChart();
                              })
                            },
                            child: Text('Cars'),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.red[100],
                          ),
                          child: FlatButton(
                            onPressed: () => {
                              setState((){
                                this.selectedDataSet = 3;
                                print("Selected data Set  = 3");
                                currentChart = UserBikesPieChart();
                              })
                            },
                            child: Text('Bikes'),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blue[100],
                          ),
                          child: FlatButton(
                            onPressed: () => {
                              setState((){
                                this.selectedDataSet = 4;
                                print("Selected data Set  = 4");
                                currentChart = UserNonePieChart();
                              })
                            },
                            child: Text('None'),
                          ),
                        ),
                      ],
                    ),
                   currentChart,
                  ],

                ),
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
          Row(
            children:[
              Container(
                margin: EdgeInsets.all(20),
                width: screenWidth(
                  context,
                  dividedBy: 1.25),
                height: screenHeight(
                  context,
                  dividedBy: 3,),
                color: Colors.amber,
              ),
            ],
          ),
        ],
      ),
    );
  }
}