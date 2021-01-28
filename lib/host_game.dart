import 'package:flutter/material.dart';
import 'package:party_app/discover_artist.dart';
import 'package:party_app/red_heart_tabs.dart';

import 'afterparty_tabs.dart';

class HostGame extends StatefulWidget {
  @override
  _HostGameState createState() => _HostGameState();
}

class _HostGameState extends State<HostGame> {

  double width1 = 70;

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Container(
              color: Colors.black,
              height: height/1.519,
              width: width,
              child: Stack(
                children: [

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: height/1.38,
                    width: width,
                    color: Colors.black,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      itemBuilder: (context, int index) {
                        return Container(
                          height:70,
                          width: width,

                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )
                          ),
                          margin: EdgeInsets.only(top: 10, right: 20, bottom: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      width1 = 200;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    height: 100,

                                    width: width1,
                                    duration: Duration(seconds: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  )
                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),


            Container(
                  height: 125.0,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      ///1ST
                      Stack(
                        children: [

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AfterPartyTabs()));
                            },
                            child: Container(

                              margin: EdgeInsets.only(left: 4, top: 10),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(60.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/dance (1).png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                          ),

                          Positioned(
                              left: 40,
                              bottom:45,
                              child: Container(
                                height:40,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.notification_important_rounded, color: Colors.blue,),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),



                      ///// 2ND



                      Stack(
                        children: [


                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder)=> RedHeartTabs(),
                              ));
                            },
                            child: Container(

                              margin: EdgeInsets.only(left: 4,),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(60.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/heart.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                          ),

                          Positioned(
                              left: 40,
                              bottom:45,
                              child: Container(
                                height:40,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.notification_important_rounded, color: Colors.blue,),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),

                      Stack(
                        children: [


                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(left: 4, top: 10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/accountant.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),

                          Positioned(
                              left: 40,
                              bottom:45,
                              child: Container(
                                height:40,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.notification_important_rounded, color: Colors.blue,),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),

                      Stack(
                        children: [


                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(left: 4,),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/dice.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),

                          Positioned(
                              left: 40,
                              bottom:45,
                              child: Container(
                                height:40,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.notification_important_rounded, color: Colors.blue,),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),

                      Stack(
                        children: [


                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(left: 4,),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/microscope.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),

                          Positioned(
                              left: 40,
                              bottom:45,
                              child: Container(
                                height:40,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.notification_important_rounded, color: Colors.blue,),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),

                    ],
                  )
              ),




          ],
        )

      ),
    );
  }
}
