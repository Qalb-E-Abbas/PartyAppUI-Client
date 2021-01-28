import 'package:flutter/material.dart';
import 'package:party_app/red_heart_tabs.dart';

import 'afterparty_tabs.dart';


class MyDates extends StatefulWidget {
  @override
  _MyDatesState createState() => _MyDatesState();
}

class _MyDatesState extends State<MyDates> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 10),
        height: height,
        width: width,
        child:
              Column(
                children: [

                  Container(
                    height: height/1.2,
                    width: width,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 60,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 70,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/q.jpg'),
                              radius: 40,
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Qalb E Abbas, 22', style: TextStyle(
                                    color: Colors.white
                                ),),

                                SizedBox(width: 35,),

                                Row(
                                  children: [

                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(child: Text('abc', style: TextStyle(
                                          color: Colors.white
                                      ),),),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(child: Text('abc', style: TextStyle(
                                          color: Colors.white
                                      ),),),
                                    ),

                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(child: Text('abc', style: TextStyle(
                                          color: Colors.white
                                      ),),),
                                    ),
                                  ],
                                )

                              ],
                            ),
                            subtitle: Text('Hello, Nice to meet you', style: TextStyle(
                                color: Colors.white
                            ),),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  ),





                  Container(
                      height: 110.0,
                      color: Colors.transparent,
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

                                  margin: EdgeInsets.only(left: 4, top: 10),
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
                                margin: EdgeInsets.only(left: 4, top: 10),
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
                                margin: EdgeInsets.only(left: 4, top: 10),
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
