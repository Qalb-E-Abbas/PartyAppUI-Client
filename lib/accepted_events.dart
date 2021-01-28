import 'package:flutter/material.dart';
import 'package:party_app/afterparty_tabs.dart';

import 'call.dart';


class AcceptedEvents extends StatefulWidget {
  @override
  _AcceptedEventsState createState() => _AcceptedEventsState();
}

class _AcceptedEventsState extends State<AcceptedEvents> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(top: 10),
            height: height,
            width: width,
            child: Column(
              children: [
                Container(
                  height: height/1.45,
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage('assets/q.jpg'),
                                        fit: BoxFit.fill
                                    )
                                ),
                              ),

                              Container(
                                height: 50,
                                width: 140,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Qalb E Abbas', style: TextStyle(color: Colors.white,),),
                                    Text('Hello, Hello, Hello', style: TextStyle(color: Colors.white,),)
                                  ],
                                ),

                              ),

                              SizedBox(width: 20,),

                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 75,
                                    child: Center(child: Text('Accepted', style: TextStyle(color: Colors.white,),),),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(color: Colors.white,
                                        )
                                    ),
                                  ),

                                  SizedBox(width: 5,),
                                  Container(
                                    height: 20,
                                    width: 75,
                                      child: Center(child: Text('Decline', style: TextStyle(color: Colors.white,),),),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                        borderRadius: BorderRadius.circular(20.0),
                                        border: Border.all(color: Colors.white,
                                        )
                                    ),
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),

                        Divider(color: Colors.white,),


                        Container(
                          height: 190,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('Qalb E Abbas organized birthday \'22 and invited you.',
                                style: TextStyle(color: Colors.white),),
                              ),

                              SizedBox(height: 10,),


                              CircleAvatar(
                                backgroundImage: AssetImage('assets/prof.png'),
                                radius: 40,
                              ),



                              Container(
                                margin: EdgeInsets.only(top:20),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text('I am soon turning 22 and I want to celebrate this with you. It\'s at my '
                                    'place, 15th of May.There will be shisha, bbq etc.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),

                        ),

                        Divider(color: Colors.white,),


                        Container(
                          height: 250,
                          width: double.infinity,
                          color: Colors.black,
                          child: Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child:

                              Column(children: [
                                Text('Set playlist together with other guests', style: TextStyle(
                                    color: Colors.white, fontSize: 20
                                ),),
                                SizedBox(height: 10,),

                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: 140,
                                  width: MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/prof.png'),
                                          fit: BoxFit.fill
                                      )
                                  ),

                                ),
                              ],)
                          ),
                        ),

                        Divider(color: Colors.white,),


                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/like (2).png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/star.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/heart.png'),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                children: [
                                  Text('This is Qalb E Abbas', style: TextStyle(
                                      color: Colors.white
                                  ),),
                                  Text('This is Qalb E Abbas', style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ],
                              ),

                              Container(
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)
                                ),
                                child: Center(
                                  child: Text('Share', style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ),


                        Divider(color: Colors.white,),
                        SizedBox(height: 10,),

                        Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('13 people have accepted so far.', style: TextStyle(
                                color: Colors.white
                              ),),
                              Text('13 people have declined so far.', style: TextStyle(
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white,),


                        Container(
                            height: 60,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/q.jpg'
                                      ),
                                    ),
                                    title: Text('Qalb E Abbas commented', style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    subtitle: Text('Looking great!', style: TextStyle(
                                        color: Colors.white
                                    ),),
                                  ),
                                ),
                              ],
                            )
                        ),


                        Divider(color: Colors.white,),


                        Container(
                            height: 60,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/q.jpg'
                                      ),
                                    ),
                                    title: Text('Qalb E Abbas commented', style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    subtitle: Text('Looking great!', style: TextStyle(
                                        color: Colors.white
                                    ),),
                                  ),
                                ),
                              ],
                            )
                        ),

                        Divider(color: Colors.white,),
                      ],
                    ),
                  ),
                ),

                Container(
                    height: height/10,
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
      ),
    );
  }
}
