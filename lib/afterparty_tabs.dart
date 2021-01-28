import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_app/accepted_events.dart';
import 'package:party_app/after_party.dart';
import 'package:party_app/discover_artist.dart';
import 'package:party_app/host_game.dart';
import 'package:party_app/invited_events.dart';
import 'package:party_app/ranking.dart';
import 'package:party_app/settings.dart';
import 'package:party_app/speed_dates.dart';

import 'join_game.dart';
import 'my_dates.dart';

class AfterPartyTabs extends StatefulWidget {
  @override
  _AfterPartyTabsState createState() => _AfterPartyTabsState();
}

class _AfterPartyTabsState extends State<AfterPartyTabs> {
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
                      child: Text('After Party'),
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
                      child: Text('Accepted Events'),
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
                      child: Text('Invited Events'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AfterParty(),
              AcceptedEvents(),
              InvitedEvents(),
            ],
          ),
        ));
  }
}
