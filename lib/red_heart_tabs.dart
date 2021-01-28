import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/settings.dart';
import 'package:party_app/speed_dates.dart';
import 'package:party_app/home_screen.dart';
import 'my_dates.dart';

class RedHeartTabs extends StatefulWidget {
  @override
  _RedHeartTabsState createState() => _RedHeartTabsState();
}

class _RedHeartTabsState extends State<RedHeartTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (builder) => HomeScreen()
                ));
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            ),
            elevation: 0,
            backgroundColor: Colors.black,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              unselectedLabelColor: Colors.orange[200],
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orange[200]
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.orange[200], width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Speed date'),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.orange[200], width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('My dates'),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.orange[200], width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Settings'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SpeedDates(),
              MyDates(),
             Settings(),
            ],
          ),
        ));
  }
}
