import 'package:flutter/material.dart';

class LoginWithOther extends StatefulWidget {
  @override
  _LoginWithOtherState createState() => _LoginWithOtherState();
}

class _LoginWithOtherState extends State<LoginWithOther> {
  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(top: height/17),
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height/2.2,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('assets/student-login.png'),
                        fit: BoxFit.fill
                    )
                ),

              ),

              SizedBox(height: 30,),


              Container(
                  height: 30,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:120.0, top: 12),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: Colors.white
                          )
                      ),
                    ),
                  )
              ),

              SizedBox(height: 10,),


              Container(
                  height: 30,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:105.0, top: 12),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.white
                          )
                      ),
                    ),
                  )
              ),

              SizedBox(height: 10,),

              Container(
                height: 25,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Center(
                  child: Text('Login', style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(height: 20,),




              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 50, right: 15),
                      height: 1,
                      width: 120,
                      decoration:BoxDecoration(
                          color: Colors.white
                      ),
                    ),

                    Text('or', style: TextStyle(
                        color: Colors.white
                    ),),

                    Container(
                      margin: EdgeInsets.only(left: 15, right: 50),
                      height: 1,
                      width: 120,
                      decoration:BoxDecoration(
                          color: Colors.white
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                child: Container(
                  height: 25,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Center(
                    child: Text('other', style: TextStyle(
                        color: Colors.white
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 30,),


              Container(
                child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height:20,
                   width: 120,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(20.0),),
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 4),
                         height: 20,
                         width: 20,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30.0),
                             image: DecorationImage(
                                 image: AssetImage('assets/FB1.png'),
                                 fit: BoxFit.cover
                             )
                         ),
                       ),

                       SizedBox(width: 10,),

                       Text('Facebook', style: TextStyle(color: Colors.white),)


                     ],
                   ),
                 ),
                 Container(
                   height:20,
                   width: 120,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(20.0),),
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 4),
                         height: 20,
                         width: 20,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30.0),
                             image: DecorationImage(
                                 image: AssetImage('assets/insta.png'),
                                 fit: BoxFit.cover
                             )
                         ),
                       ),

                       SizedBox(width: 10,),

                       Text('Instagram', style: TextStyle(color: Colors.white),)


                     ],
                   ),
                 )

               ],
             )
              ),



              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:20,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/google.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10,),

                            Text('Google', style: TextStyle(color: Colors.white),)


                          ],
                        ),
                      ),
                      Container(
                        height:20,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/email.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),

                            SizedBox(width: 10,),

                            Text('Email', style: TextStyle(color: Colors.white),)


                          ],
                        ),
                      )

                    ],
                  )
              ),


              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:20,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/twitter.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),

                            SizedBox(width: 10,),

                            Text('Twitter', style: TextStyle(color: Colors.white),)


                          ],
                        ),
                      ),


                      Container(
                        height:20,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              height: 20,
                             width: 20,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30.0),
                               image: DecorationImage(
                                 image: AssetImage('assets/apple.png'),
                                 fit: BoxFit.cover
                               )
                             ),
                            ),

                            SizedBox(width: 10,),

                            Text('Apple', style: TextStyle(color: Colors.white),)


                          ],
                        ),
                      )

                    ],
                  )
              ),

              SizedBox(height: 50,),



              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text('Forget Password', style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text('Create account', style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text('About Party', style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    )

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
