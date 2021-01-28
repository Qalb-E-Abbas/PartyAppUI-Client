import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeOut extends StatefulWidget {
  @override
  _TimeOutState createState() => _TimeOutState();
}

class _TimeOutState extends State<TimeOut> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/q.jpg'),
                      fit: BoxFit.fill
                  )
              ),

              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              ),

            ),

            Positioned(
              left: width/1.4,
              child: Container(
                height: height/6.5,
                width: width/3.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/q.jpg'),
                        fit: BoxFit.fill
                    )
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: width/2.5,
              child: Container(
                height: height/24,
                width: width/8,
                child: Center(child: Text('0:00', style: TextStyle(
                    color: Colors.white
                ),),),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),


            Positioned(
              top: height/1.2,
              left: 25,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: height/9,
                width: width/1.1,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        height: 50,
                        width: 150,
                        child: Center(child: Text('I Like it'),),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white)
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: Center(child: Text('I don\'t like it'),),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white)
                        ),
                      ),

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
