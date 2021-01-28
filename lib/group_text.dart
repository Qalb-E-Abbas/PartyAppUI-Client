import 'package:flutter/material.dart';

class GroupTextScreen extends StatefulWidget {
  @override
  _GroupTextScreenState createState() => _GroupTextScreenState();
}

class _GroupTextScreenState extends State<GroupTextScreen> {
  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height:50,
                width: width,

                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                ),
                margin: EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 49,
                      width: 50,
                      child: Center(
                        child: Text('Hello', style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                    ),

                    SizedBox(width: 10,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Hello, what are you doing?', style: TextStyle(
                            color: Colors.white
                        ),),
                        Container(
                          height:2,
                          width: 130,
                          color: Colors.black,
                        ),
                        Text('Hello, what are you doing?', style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),

                    SizedBox(width: 115,),

                    Container(
                      height: 49,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/phone-call.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 70),
                height: height,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 30,
                  itemBuilder: (context, int index) {
                    return
                      Column(
                        children: [
                      Container(
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
                    ),



                          Container(
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
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.white)
                                      ),

                                      margin:EdgeInsets.only(bottom: 10),

                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 220),
                                            child: Column(
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
                                          ),

                                          SizedBox(width: 15,),


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

                                        ],
                                      )
                                  ),


                                ],
                              )
                          ),






                        ],
                      );
                  },
                ),
                color: Colors.black,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
