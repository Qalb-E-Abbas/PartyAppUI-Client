import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/my_dates.dart';
import 'package:party_app/settings.dart';
import 'package:party_app/speed_dates.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: Container(
          child: Stack(
            children: [

              Container(
                height: 40,
                color: Colors.black,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)
                      => SpeedDates()
                      ));

                    },
                      child: Text('Speed Date'),
                    ),
                    RaisedButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)
                      => MyDates()
                      ));

                    },
                      child: Text('My Dates'),
                    ),
                    RaisedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)
                      => Settings()
                      ));

                    },
                      child: Text('Settings'),
                    )
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 40),
                height: height,
                width: width,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/q.jpg'),
                   fit: BoxFit.fill
                 )
               ),
              ),

              Positioned(
                left: width/1.4,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: height/6.5,
                  width: width/3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/q.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),

              Positioned(
                top: 10,
                left: width/2.5,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: height/24,
                  width: width/8,
                  child: Center(child: Text('4:00', style: TextStyle(
                    color: Colors.white
                  ),),),
                  decoration: BoxDecoration(
                color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                  ),
                ),
              ),

              Positioned(
                top: height/1.5,
                left: 25,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: height/7,
                  width: width/1.1,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),


                        SizedBox(width: 10,),

                        Text('Hello, I am Qalb E Abbas. Hello, \nI am Qalb E Abbas. '
                            'Hello, I am \nQalb E Abbas.', style: TextStyle(
                          color: Colors.white,fontSize: 18
                        ),),


                        SizedBox(width: 10,),

                        Icon(Icons.arrow_forward_ios, color: Colors.white,),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                  ),
                ),
              ),


              Positioned(
                top: height/1.2,
                left: 25,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: height/10,
                  width: width/1.1,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                       Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('assets/chat.png'),
                             fit: BoxFit.fill
                           )
                         ),
                       ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/microphone.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/phone-call.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),

                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/video.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),

                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/account.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
