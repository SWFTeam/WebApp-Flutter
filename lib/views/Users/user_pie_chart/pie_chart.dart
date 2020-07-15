import 'package:Web_backoffice/model/User.dart';
import 'package:Web_backoffice/services/services.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/indicator.dart';

class UserPieChart extends StatefulWidget {
  @override
  _UserPieChartState createState() => _UserPieChartState();
}
class _UserPieChartState extends State<UserPieChart> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: Services.getUsers(),
            // ignore: missing_return
            builder: (BuildContext context, AsyncSnapshot snapshot){
            switch(snapshot.connectionState){
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.done:
                if(snapshot.hasData){
                  List<User> users = snapshot.data;
                  int overhall = users.length;
                  List<User> carOwnersList = users.where((i) => i.needs.hasCar).toList();
                  int carsOwner = carOwnersList.length;
                  print(carOwnersList.asMap());
                  return AspectRatio(
                    aspectRatio: 1.8,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                    pieTouchData: PieTouchData(touchCallback: (pieTouchResponse){
                                      setState(() {
                                        if (pieTouchResponse.touchInput is FlLongPressEnd || pieTouchResponse.touchInput is FlPanEnd){
                                          touchedIndex = -1;
                                        } else {
                                          touchedIndex = pieTouchResponse.touchedSectionIndex;
                                        }
                                      });
                                    }),
                                    borderData: FlBorderData(
                                        show : false
                                    ),
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 40,
                                    sections: showingSections()
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  <Widget>[
                              FlatButton(
                                  onPressed: ()=>{
                                    print(overhall)
                                  },
                                  child: Text("Salayna Test")),
                              Indicator(
                                color: Color(0xff0293ee),
                                text: 'Cars Owner',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xfff8b250),
                                text: 'Others',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff845bef),
                                text: 'Third',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Indicator(
                                color: Color(0xff13d38e),
                                text: 'Fourth',
                                isSquare: true,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 28,
                          )
                        ],
                      ),
                    ),
                  );
                }
                else if(snapshot.hasError){
                  print("Error");
                }
                break;
              default:
                return Container();
                break;
            }
            },
        );
        /*AspectRatio(
          aspectRatio: 1.8,
          child: Card(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(touchCallback: (pieTouchResponse){
                          setState(() {
                            if (pieTouchResponse.touchInput is FlLongPressEnd || pieTouchResponse.touchInput is FlPanEnd){
                              touchedIndex = -1;
                            } else {
                              touchedIndex = pieTouchResponse.touchedSectionIndex;
                            }
                          });
                        }),
                        borderData: FlBorderData(
                          show : false
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections()
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    FlatButton(
                        onPressed: ()=>{
                          print(overhall)
                    },
                        child: Text("Salayna Test")),
                    Indicator(
                      color: Color(0xff0293ee),
                      text: 'Cars Owner',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: Color(0xfff8b250),
                      text: 'Others',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: Color(0xff845bef),
                      text: 'Third',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Indicator(
                      color: Color(0xff13d38e),
                      text: 'Fourth',
                      isSquare: true,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
                SizedBox(
                  width: 28,
                )
              ],
            ),
          ),
        ),*/
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color:  Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}
