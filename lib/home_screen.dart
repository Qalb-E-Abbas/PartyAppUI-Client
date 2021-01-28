import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:party_app/call.dart';
import 'package:party_app/red_heart_tabs.dart';

import 'afterparty_tabs.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  height: 110.0,
                  color: Colors.black,
                  child:

                      Row(
                        children: [

                      Stack(
                      children: [


                      GestureDetector(
                        onTap: (){
                          dialogForProfilePic();
                        },
                        child: Container(
                        margin: EdgeInsets.only(left: 4, bottom: 10),
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage('assets/q.jpg'),
                            fit: BoxFit.fill
                        )
                  ),
                ),
                      ),

                Positioned(
                    left: 75,
                    bottom:60,
                    child: GestureDetector(
                      onTap: (){
                        dialogForBellIcon();
                      },
                      child: Container(
                        height:40,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: IconButton(
                            icon:
                            Icon(
                              Icons.notification_important_rounded,
                              color: Colors.blue,),
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),

                          SizedBox(width: 10,),

                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 30,
                              itemBuilder: (context, int index) {
                                return  Stack(
                                  children: [


                                    Container(
                                      margin: EdgeInsets.only(left: 4, top: 15),
                                      height: 70,
                                      width: 90,
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
                          )
                        ],
                      )




                ),


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
                          title: Text('qalbeabbas964@gmail.com',style: TextStyle(
                            color: Colors.white
                          ),),
                          subtitle: Text('online at 4 am', style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white),
                          ),

                          child:
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Follow', style: TextStyle(
                              color: Colors.white
                          ),),
                          Container(
                            height: 17,
                            width: 1,
                            color: Colors.white,
                          ),

                          Text('....', style: TextStyle(
                              color: Colors.white
                          ),),
                        ],
                      ))
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
                                     Navigator.of(context).push(MaterialPageRoute(
                                        builder: (builder) => AfterPartyTabs()
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



  // HERE I HAVE PLACED ALL THE DIALOGS USED IN HOME SCREEN

  dialogForProfilePic(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.black
          ),
          height: 450,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [




                Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: GestureDetector(
                      onTap: (){
                        dialogForSearch();
                      },
                      child: Container(
                          child: 
                          Text('Search...', style: TextStyle(
                            color: Colors.white, fontSize: 20
                          ),)),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2.0, color: Colors.white)
                    )
                  ),
                ),



                Container(
                  height: 140,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap:(){
                              dialogMyProfile();
                            },
                              child:
                              Container(
                                  child:
                                  Text('My Profile', style: TextStyle(
                                      color: Colors.white,fontSize: 20
                                  ),))),

                          SizedBox(height: 5,),

                          Text('My Activity', style: TextStyle(
                              color: Colors.white,fontSize: 20
                          ),),

                          SizedBox(height: 5,),

                            Text('My Events', style: TextStyle(
                                color: Colors.white,fontSize: 20
                            ),),

                          SizedBox(height: 5,),

                          Text('My History', style: TextStyle(
                              color: Colors.white,fontSize: 20
                          ),),
                        ],
                      ),
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.white)
                      )
                  ),
                ),


                Container(
                  height: 87,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Create Post', style: TextStyle(
                            color: Colors.white, fontSize: 20
                        ),),

                        SizedBox(height: 5,),

                        GestureDetector(
                          onTap: (){
                            dialogForMyOrganizeEvents();

                          },
                            child:
                            Container(
                                child:
                                Text('Organize Event', style: TextStyle(
                                    color: Colors.white, fontSize: 20
                                ),))),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.white)
                      )
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    dialogForSettings();
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.only(top: 8, right: 200),
                    child: Text('Settings', style: TextStyle(
                        color: Colors.white, fontSize: 20
                    ),),
                  ),
                )




              ],
            ),
          ),
        ),
      );
    });
  }


  dialogForSearch(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 350,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [


                Container(
                  height: 50,
                  width: double.infinity,
                  child: GestureDetector(
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top:2, left: 8),
                            child:Row(
                              children: [
                                Text('Search...', style: TextStyle(
                                    color: Colors.white, fontSize: 18
                                ),),

                                SizedBox(width: 150,),

                                Icon(Icons.search, color: Colors.white,)
                              ],
                            ),
                          )),
                    ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)
                  ),
                ),


              ],
            ),
          ),
        ),
      );
    });
  }


  dialogForSettings(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 680,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [

                SizedBox(height: 20,),


                Column(
                  children: [


                    Container(
                      height: 40,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: GestureDetector(
                          onTap: (){
                            dialogForSearch();
                          },
                          child: Container(
                              child:
                              Center(child: Text('Settings', style: TextStyle(
                                  color: Colors.white, fontSize: 20
                              ),))),
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),



                    Container(
                      height: 180,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Main Settings', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Colors', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Language', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Saved Content', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Social Settings', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Date Settings', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),


                    Container(
                      height: 130,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Privacy Settings', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Location services', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('My history', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Profile type', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),



                    Container(
                      height: 155,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Account', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Login', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Security', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Verify', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                            SizedBox(height: 5,),
                            Text('Account type', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),

                    Container(
                      height: 45,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('About', style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        dialogForSettings();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top:15, right: 220),
                        child: Text('Logout'),
                      ),
                    )




                  ],
                ),


              ],
            ),
          ),
        ),
      );
    });
  }


  dialogMyProfile(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(

          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 750,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [

                Container(
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)
                  ),
                  child:  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/q.jpg'),
                    ),
                    title: Text('Qalb E Abbas', style: TextStyle(
                        color: Colors.white
                    ),),
                    subtitle: Text('800 friends', style: TextStyle(
                        color: Colors.white
                    ),),
                  ),
                ),

                SizedBox(height: 20,),


                Column(
                  children: [




                    Container(
                      height: 40,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: GestureDetector(
                          onTap: (){
                            dialogForSearch();
                          },
                          child: Container(
                              child:
                              Center(child: Text('My Profile', style: TextStyle(
                                  color: Colors.white
                              ),))),
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),



                    Container(
                      height: 250,
                      width: double.infinity,

                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: 
                        
                            Column(
                              children: [
                              Text('Photos', style: TextStyle(
                                  color: Colors.white
                              ),),
                              Expanded(
                                child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 30,
                                itemBuilder: (context, int index) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height:180,
                                        width: 180,
                                        margin: EdgeInsets.only(left: 4, top: 10),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/q.jpg'),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                      ),

                                    ],
                                  );
                                },
                              ),
                              ),

                                RaisedButton(
                                  child: Text('see more', style: TextStyle(
                                    color: Colors.white
                                  ),),
                                    color: Colors.black,
                                    onPressed: (){}
                                    )
                            ],)
                        

                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white)
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top:25.0),
                          child:

                          Column(
                            children: [
                            Text('Friends', style: TextStyle(
                                color: Colors.white
                            ),),
                            SizedBox(height: 10,),
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 3,
                                children: List.generate(6,(index){
                                  return Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage('assets/q.jpg'),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 2,),

                                      Text('Abbas', style: TextStyle(
                                          color: Colors.white
                                      ),)

                                    ],
                                  );
                                }),
                              ),
                            ),
                              RaisedButton(
                                  child: Text('see more', style: TextStyle(
                                      color: Colors.white
                                  ),),
                                  color: Colors.black,
                                  onPressed: (){}
                              )

                          ],)


                      ),
                    ),




                  ],
                ),


              ],
            ),
          ),
        ),
      );
    });
  }


  dialogForMyOrganizeEvents(){

    return showDialog(context: context, builder: (context){

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 750,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)
                    ),
                    child:  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/q.jpg'),
                      ),
                      title: Text('Qalb E Abbas', style: TextStyle(
                        color: Colors.white
                      ),),
                      subtitle: Text('800 friends',  style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),

                  SizedBox(height: 15,),


                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 40,
                        width: double.infinity,
                        child:
                        Center(child: Text('Organize event',  style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                        ),)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 2.0, color: Colors.white)
                            )
                        ),
                      ),



                      Container(
                        height: 130,
                        width: double.infinity,
                        color: Colors.black,
                        child: Column(
                              children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 5),
                                  child: Text('Choose type of event',  style: TextStyle(
                                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                                  ),)
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height:50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage('assets/dance (1).png'),
                                              fit: BoxFit.fill
                                            )
                                          ),
                                        ),

                                        SizedBox(height: 5,),
                                        Text('Party', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        Container(
                                          height:50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('assets/chill-out.png'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text('& Chill', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        Container(
                                          height:50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('assets/concert.png'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),

                                        SizedBox(height: 5,),
                                        Text('Concert', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        Container(
                                          height:50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('assets/other.png'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text('Other', style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    )
                                  ],
                                )
                              )
                            ],
                            )
                      ),


                      SizedBox(height: 15,),



                      Container(
                          height: 130,
                          width: double.infinity,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 5),
                                  child: Text('Guest List',   style: TextStyle(
                                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                                  ),)
                              ),
                              Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/friends.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Invite from \nfriends',  style: TextStyle(
                                              color: Colors.white
                                          ), )
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/guest.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Invite from\nguests', style: TextStyle(
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/one.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('+One', style: TextStyle(
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/one.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Open', style: TextStyle(
                                              color: Colors.white
                                          ),)
                                        ],
                                      )
                                    ],
                                  )
                              )
                            ],
                          )
                      ),

                      SizedBox(height: 20,),




                      Container(
                          height: 120,
                          width: double.infinity,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 5),
                                  child: Text('Music', style: TextStyle(
                                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                                  ),)
                              ),
                              Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/guest vote.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Guest vote', style: TextStyle(
                                              color: Colors.white,
                                          ),)
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/decide.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('You decide', style: TextStyle(
                                            color: Colors.white,
                                          ),)
                                        ],
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            height:50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/playlist.png'),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Playlist', style: TextStyle(
                                            color: Colors.white,
                                          ),)
                                        ],
                                      ),

                                    ],
                                  )
                              )
                            ],
                          )
                      ),



                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }



  dialogForBellIcon(){

    return showDialog(context: context, builder: (context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 600,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [

                Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 20,
                    width: 90,
                    child: Text('Just Now', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                    ),)
                ),

                SizedBox(height: 10,),






                Container(
                      height: 60,
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.local_activity, color: Colors.white,),
                                SizedBox(width: 2,),
                                Text('There is a lot of activity in birthday 92', style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.comment, color: Colors.white,),
                                SizedBox(width: 2,),
                                Text('Abbas commented on your post.', style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ],
                        ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.white)
                          )
                      ),
                    ),



                Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 20,
                    width: 90,
                    child: Text('Earlier', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                    ),)
                ),

                SizedBox(height: 10,),






                Container(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('You have got a new date.', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.request_quote, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Abbas wants to be your friend.', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),


                      Row(
                        children: [
                          Icon(Icons.message, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Abbas sent you a new message.', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.comment, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Abbas commented on your post.', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),


                    ],
                  ),

                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.white)
                      )
                  ),
                ),



                Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 25,
                    width: 90,
                    child: Text('Today', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                    ),)
                ),

                SizedBox(height: 10,),


                Container(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.inventory, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Abbas invited you to an event', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.search, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Discover new artists this week', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.white)
                      )
                  ),
                ),




                Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 25,
                    width: 90,
                    child: Text('Yesterday', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                    ),)
                ),

                SizedBox(height: 10,),


                Container(
                  height: 35,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.favorite_outlined, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('You have got 8 new dates.', style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.white)
                      )
                  ),
                ),






              ],
            ),
          ),
        ),
      );
    });
  }







}
