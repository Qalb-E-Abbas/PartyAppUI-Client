import 'package:flutter/material.dart';


class SpeedDates extends StatefulWidget {
  @override
  _SpeedDatesState createState() => _SpeedDatesState();
}

class _SpeedDatesState extends State<SpeedDates> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: height,
          width: width,
          child: Column(
            children: [
              Expanded(child:
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, int index) {
                  return Stack(
                    children: [
                      Container(
                        height:height/1.4,
                        width: width,
                        margin: EdgeInsets.only(left: 4, top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),

                      Positioned(
                        top: 500,
                          right:210,
                          child: Text('Qalb E Abbas, 22', style: TextStyle(
                            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
                          ),
                          ))

                    ],
                  );
                },
              ),),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 50,
                    width: 130,
                    color: Colors.green,
                    child: Center(child: Text('I like this one',style: TextStyle(
                        color: Colors.white
                    ), ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 50,
                    width: 130,
                    color: Colors.red,
                    child: Center(child: Text('I don\'t like this one', style: TextStyle(
                      color: Colors.white
                    ),),),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
