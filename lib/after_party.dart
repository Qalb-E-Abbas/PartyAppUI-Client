import 'package:flutter/material.dart';

import 'afterparty_tabs.dart';
import 'call.dart';


class AfterParty extends StatefulWidget {
  @override
  _AfterPartyState createState() => _AfterPartyState();
}

class _AfterPartyState extends State<AfterParty> {
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
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Qalb E Abbas', style: TextStyle(color: Colors.white,),),
                                  Text('Accepted !', style: TextStyle(color: Colors.white,),)
                                ],
                              ),

                            ),

                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 75,
                                  child: Center(child: Text('Guest List', style: TextStyle(color: Colors.white,),),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(color: Colors.white,
                                      )
                                  ),
                                ),

                                SizedBox(width: 5,),
                                Container(
                                  height: 20,
                                  width: 75,
                                  child: Center(child: Text('Server Hub', style: TextStyle(color: Colors.white,),),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(color: Colors.white,
                                      )
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 25,
                                  width: 40,
                                  child: Center(child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text('....', style: TextStyle(color: Colors.white,),),
                                  ),),
                                  decoration: BoxDecoration(
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
                        height: 250,
                        width: double.infinity,
                        color: Colors.black,
                        child: Padding(
                            padding: const EdgeInsets.only(top:25.0),
                            child:

                            Column(
                              children: [
                                Text('Photos and videos of event', style: TextStyle(
                                    color: Colors.white, fontSize: 20
                                ),),
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 30,
                                    itemBuilder: (context, int index) {
                                      return Container(
                                        height:180,
                                        width: 180,
                                        margin: EdgeInsets.only(left: 4, top: 10),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/q.jpg'),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],)


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
                              Text('Playlist during the event', style: TextStyle(
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
