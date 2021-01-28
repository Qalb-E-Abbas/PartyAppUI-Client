import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:party_app/group_text.dart';
import 'package:party_app/red_heart_tabs.dart';

import 'afterparty_tabs.dart';


class DiscoverArtist extends StatefulWidget {
  @override
  _DiscoverArtistState createState() => _DiscoverArtistState();
}

class _DiscoverArtistState extends State<DiscoverArtist> {

  // Default Drop Down Item.
  String dropdownValue = 'This month';

  // To show Selected Item in Text.
  String holder = '' ;

  List <String> actorsName = [
    'This month',
    'This week',
    'This year',
    'This creator',
    'See all'
  ] ;

  void getDropDownItem(){

    setState(() {
      holder = dropdownValue ;
    });
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [


              Container(
                margin: EdgeInsets.only(top: 10),
                  height: 60,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height:50,
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
                              height: 49,
                              width: 50,
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

                            SizedBox(width: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                DropdownButton<String>(
                                  dropdownColor: Colors.black,
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                    iconSize: 20,
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                    onChanged: (String data) {
                                      setState(() {
                                        dropdownValue = data;
                                      });
                                    },
                                    items: actorsName.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),

                                SizedBox(width:10),


                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(30),

                                  ),
                                  child: Center(child: Text('Follow', style: TextStyle(
                                      color: Colors.white
                                  ),)),
                                ),

                                SizedBox(width: 5),

                                Container(
                                  height: 25,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Center(
                                      child: Text('.....', style: TextStyle(
                                          color: Colors.white
                                      ),)),
                                )




                              ],
                            )

                          ],
                          )
                      ),
                    ],
                  )
              ),

              Container(
                height: height/2.5,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('assets/student-login.png'),
                        fit: BoxFit.fill
                    )
                ),

              ),


              SizedBox(
                height: 10,
              ),

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
                        Text('815 people liked this', style: TextStyle(
                            color: Colors.white
                        ),),
                        Text('100 people commented on this', style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),

                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
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


              Container(
                  height: 60,
                  width: width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ListTile(
                          leading:       Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/q.jpg'),
                                    fit: BoxFit.fill
                                ),
                              shape: BoxShape.circle
                            ),
                          ),
                          title: Text('Qalb E Abbas', style: TextStyle(
                            color: Colors.white
                          ),),
                          subtitle: Text('online at 4 am', style: TextStyle(
                              color: Colors.white
                          ), ),
                        ),
                      ),
                    ],
                  )
              ),



              Container(
                  height: 60,
                  width: width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ListTile(
                          leading:       Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/q.jpg'),
                                    fit: BoxFit.fill
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                          title: Text('Qalb E Abbas', style: TextStyle(
                              color: Colors.white
                          ),),
                          subtitle: Text('online at 4 am', style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(height: 5,),

              Container(
                  height: 100.0,
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
          ),

        ),
      ),
    );
  }


}

