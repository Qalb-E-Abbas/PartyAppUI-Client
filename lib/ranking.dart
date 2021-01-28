import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:party_app/group_text.dart';
import 'package:party_app/red_heart_tabs.dart';

import 'afterparty_tabs.dart';
import 'call.dart';


class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {

  // Default Drop Down Item.
  String dropdownValue = 'This day';


  // To show Selected Item in Text.
  String a = '' ;

  List <String> first = [
    'This day',
    'This month',
    'This week',
    'This year',
    'This creator',
    'All times'
  ];



  // Default Drop Down Item.
  String dropdownValue1 = 'Artist';

  // To show Selected Item in Text.
  String b = '' ;

  List <String> second = [
    'Artist',
    'Creator',
    'Both'
  ];



  // Default Drop Down Item.
  String dropdownValue2 = 'My country';

  // To show Selected Item in Text.
  String c = '' ;

  List <String> third = [
    'My country',
    'World',

  ];

  // Default Drop Down Item.
  String dropdownValue3 = 'followers';

  // To show Selected Item in Text.
  String d = '' ;

  List <String> fourth = [
    'followers',
    'streams',
    'shares',
    'overall'
  ];



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
                          height:50,
                          width: width,

                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(22)
                          ),

                          margin:EdgeInsets.only(bottom: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [



                                DropdownButton<String>(
                                  value: dropdownValue,
                                  dropdownColor: Colors.black,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                  onChanged: (String data) {
                                    setState(() {
                                      dropdownValue = data;
                                    });
                                  },
                                  items: first.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),




                                DropdownButton<String>(
                                  dropdownColor: Colors.black,
                                  value: dropdownValue1,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                  onChanged: (String data) {
                                    setState(() {
                                      dropdownValue1 = data;
                                    });
                                  },
                                  items: second.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),

                              DropdownButton<String>(
                                dropdownColor: Colors.black,
                                value: dropdownValue2,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 20,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                                onChanged: (String data) {
                                  setState(() {
                                    dropdownValue2 = data;
                                  });
                                },
                                items: third.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),



                              DropdownButton<String>(
                                dropdownColor: Colors.black,
                                value: dropdownValue3,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 20,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                                onChanged: (String data) {
                                  setState(() {
                                    dropdownValue3 = data;
                                  });
                                },
                                items: fourth.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),


                          ],
                          )
                      ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: height/1.7,
                width: width,
                color: Colors.black,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 30,
                  itemBuilder: (context, int index) {
                    return
                      Column(
                        children: [
                          Container(
                              height:70,
                              width: width,

                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(22)
                              ),
                              margin:EdgeInsets.only(bottom: 10),
                              child: Row(children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/q.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),

                                SizedBox(width: 10,),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Qalb E Abbas'),
                                    Container(
                                      height:2,
                                      width: 130,
                                      color: Colors.white,
                                    ),
                                    Text('900M followers'),
                                  ],
                                ),

                                SizedBox(width: 110,),

                                Container(
                                  height: 49,
                                  width: 70,
                                  child: Center(
                                    child: Text('Rank#1', style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                ),

                              ],))
                        ],
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
          ),

        ),
      ),
    );
  }


}

