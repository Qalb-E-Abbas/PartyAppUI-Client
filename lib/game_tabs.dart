import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/host_game.dart';
import 'package:party_app/settings.dart';
import 'package:party_app/speed_dates.dart';

import 'join_game.dart';
import 'my_dates.dart';

class GameTabs extends StatefulWidget {
  @override
  _GameTabsState createState() => _GameTabsState();
}

class _GameTabsState extends State<GameTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            ),
            elevation: 0,
            backgroundColor: Colors.black,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Host Game'),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Join Game'),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.white, width: 1),
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
              HostGame(),
              JoinGame(),
             Icon(Icons.add)
            ],
          ),
        ));
  }
}
