import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  double margin=0;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          width: width,
          height: height,
          child: Container(
            height: height/1.6,
            width: width,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Text('My data profile', style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/gallery.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('My Photos', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/information.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('My Information', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/ghost.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Ghost', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 40,),

                  Text('Interested In', style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/male-gender.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text('Male', style: TextStyle(
                                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/third-gender.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Why not both?', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/femenine.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Female', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),



                  SizedBox(height: 40,),

                  Text('Age 22-29', style: TextStyle(
                      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                  ),),


                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text('18', style: TextStyle(
                          color: Colors.white, fontSize: 14,
                        ),),

                        Expanded(
                          child: Slider(
                            value:margin.toDouble(),
                            onChanged: (newRating){

                              setState(() {
                                margin = newRating;
                              });

                            },
                            min: 0,
                            max: 100,
                            divisions: 5,
                          ),
                        ),

                        Text('18', style: TextStyle(
                          color: Colors.white, fontSize: 14,
                        ),),
                      ],
                    ),


                  ),

                  SizedBox(height: 15,),

                  Text('Distance', style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                  ),),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text('0', style: TextStyle(
                          color: Colors.white, fontSize: 14,
                        ),),

                        Expanded(
                          child: Slider(
                            value:margin.toDouble(),
                            onChanged: (newRating){

                              setState(() {
                                margin = newRating;
                              });

                            },
                            min: 0,
                            max: 100,
                            divisions: 5,
                          ),
                        ),

                        Text('120', style: TextStyle(
                          color: Colors.white, fontSize: 14,
                        ),),
                      ],
                    ),


                  ),

                  SizedBox(height: 20,),

                  Text('Zodiac', style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/aries.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Aries', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/capri.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Capricorn', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/gemini.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Gemini', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/pisces.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Pisces', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 15,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/aqui.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Aquarius', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/libra.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Libra', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/scorp.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Scorpio', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/virgo.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Virgo', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),


                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/taurus.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Taurus', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/cancer.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Cancer', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/sag.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Sagittarius', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/leo.png'),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text('Leo', style: TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
