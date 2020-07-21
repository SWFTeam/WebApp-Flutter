import 'package:Web_backoffice/model/User.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final User user;

  const DetailView({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(user == null){
      return Center(child: Text(
        "No User Selected \n Please select one on the left"
      ),
    );
    }
    else{
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.topLeft,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                      "First Name"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.user?.firstname,
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Last Name"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.user?.lastname,
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Last Name"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.user?.lastname,
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Last Name"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.user?.emailAddress,
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                    "First Name"
                  ),
                  SizedBox(width: 50),
                  Text(
                    "${user?.user?.address?.nbHouse} ${user?.user?.address?.street} ${user?.user?.address?.city} ${user?.user?.address?.country}",
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Working adresse"
                  ),
                  SizedBox(width: 50),
                  Text(
                    "${user?.user?.addressWork?.nbHouse} ${user?.user?.addressWork?.street} ${user?.user?.addressWork?.city} ${user?.user?.addressWork?.country}",
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Has a Car ?"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.needs?.hasCar.toString(),
                  )
                ],
              ),
              SizedBox(width: 100),
              Row(
                children: [
                  Text(
                      "Has a Bike ?"
                  ),
                  SizedBox(width: 50),
                  Text(
                    user?.needs?.hasBike.toString(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    }
  }
}