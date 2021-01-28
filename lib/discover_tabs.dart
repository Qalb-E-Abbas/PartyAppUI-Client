import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/discover_artist.dart';
import 'package:party_app/host_game.dart';
import 'package:party_app/ranking.dart';
import 'package:party_app/settings.dart';
import 'package:party_app/speed_dates.dart';

import 'join_game.dart';
import 'my_dates.dart';

class DiscoverTabs extends StatefulWidget {
  @override
  _DiscoverTabsState createState() => _DiscoverTabsState();
}

class _DiscoverTabsState extends State<DiscoverTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
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
                      child: Text('Discover Artists'),
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
                      child: Text('Discover Creators'),
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
                      child: Text('Ranking'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DiscoverArtist(),
              DiscoverArtist(),
              Ranking(),
            ],
          ),
        ));
  }
}
