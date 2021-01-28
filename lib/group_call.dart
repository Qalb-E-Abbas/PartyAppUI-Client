import 'package:flutter/material.dart';

class GroupCall extends StatefulWidget {
  @override
  _GroupCallState createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  @override
  Widget build(BuildContext context) {




    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height:height,
          width: width,
          child: Stack(
            children: [


              Column(
                children: [

                  Row(
                    children: [
                      Container(
                        height: height/2,
                        width: width/2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink, width: 2),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      Container(
                        height: height/2,
                        width: width/2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink, width: 2),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ],
                  ),


                  Row(
                    children: [
                      Container(
                        height: height/2.28,
                        width: width/2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink, width: 2),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      Container(
                        height: height/2.28,
                        width: width/2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink, width: 2),
                            image: DecorationImage(
                                image: AssetImage('assets/q.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ],
                  )



                ],
              ),
              
              
              Positioned(
                top: height/2.2,
                left: width/2.4,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/q.jpg'),
                          fit: BoxFit.fill
                      )
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
