import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinGame extends StatefulWidget {
  @override
  _JoinGameState createState() => _JoinGameState();
}

class _JoinGameState extends State<JoinGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: InkWell(
            child: GestureDetector(
              onTap: (){
                joinName();
              },
              child: Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)
                ),
                child: Center(
                  child: Text('Join Game', style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  joinName(){
    return showDialog(context: context, builder: (builder){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30)
          ),
         
          height: 140,
          width: double.infinity,
          child: Column(
            children: [
              Text('Game Code', style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25
              ),),

              SizedBox(height: 20,),
              Container(
                height: 80,
                width: 180,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter code here',
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

}
