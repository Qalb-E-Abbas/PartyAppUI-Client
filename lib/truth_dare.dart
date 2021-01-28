import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TruthDare extends StatefulWidget {
  @override
  _TruthDareState createState() => _TruthDareState();
}

class _TruthDareState extends State<TruthDare> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/prof.png'),
                      fit: BoxFit.fill
                  )
              ),
            ),

            Positioned(
              left: width/1.4,
              child: Container(
                height: height/6.5,
                width: width/3.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/prof.png'),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),

            Positioned(
              top: 10,
              left: width/2.5,
              child: Container(
                height: height/24,
                width: width/8,
                child: Center(child: Text('4:00', style: TextStyle(
                  color: Colors.white
                ),),),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            Positioned(
              top: height/1.28,
              left: 25,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: height/7,
                width: width/1.14,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),


                      SizedBox(width: 10,),

                      Text('Hello, I am Qalb E Abbas. Hello, I am \nQalb E Abbas. '
                          'Hello, I am Qalb E Abbas. \nHello, I am Qalb E Abbas.', style: TextStyle(
                          color: Colors.white
                      ),),


                      SizedBox(width: 10,),

                      Icon(Icons.arrow_forward_ios, color: Colors.white,),

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
