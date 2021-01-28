import 'package:flutter/material.dart';
import 'package:party_app/call.dart';

import 'afterparty_tabs.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 50),
        height: height,
        width: width,
        child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: height/10,
              color: Colors.black,
              child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, int index) {
                  return  Stack(
                    children: [


                      Container(
                        margin: EdgeInsets.only(left: 4, top: 15),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      Positioned(
                          left: 70,
                          bottom:65,
                          child: Container(
                            height:40,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: Icon(
                                  Icons.comment,
                                  color: Colors.blue,),
                              ),
                            ),
                          )
                      )
                    ],
                  );
                },
              ),
            ),

           SingleChildScrollView(
               child: Container(
                   color: Colors.black,
             height: height/1.42,
             width: width,
             child:  ListView.builder(
                 scrollDirection: Axis.vertical,
                 itemCount: 30,
                 itemBuilder: (context, int index) {
                   return Container(
                             margin: EdgeInsets.only(top: 10),
                             height: 80,
                             width: width,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                     height:80,
                                     width: width,

                                     decoration: BoxDecoration(
                                         color: Colors.black,
                                         borderRadius: BorderRadius.circular(22),
                                         border: Border.all(color: Colors.white)
                                     ),

                                     margin:EdgeInsets.only(bottom: 10),

                                     child: Row(
                                       children: [
                                         Container(
                                           height: 80,
                                           width: 70,
                                           decoration: BoxDecoration(
                                             border: Border.all(color: Colors.white),
                                             borderRadius: BorderRadius.circular(20),
                                             image: DecorationImage(
                                                 image: AssetImage('assets/q.jpg'),
                                                 fit: BoxFit.fill
                                             ),
                                           ),
                                         ),

                                         SizedBox(width: 10,),

                                         Column(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                                             Text('Qalb E Abbas', style: TextStyle(
                                                 color: Colors.white
                                             ),),
                                             Text('online at 4:00am', style: TextStyle(
                                                 color: Colors.white
                                             ),),
                                           ],
                                         ),

                                       ],
                                     )
                                 ),
                               ],
                             )
                         );
                 },
             ),
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
                              builder: (builder)=> CallPage(),
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
