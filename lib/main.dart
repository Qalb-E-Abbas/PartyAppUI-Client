import 'package:flutter/material.dart';
import 'package:party_app/afterparty_tabs.dart';
import 'package:party_app/chat.dart';
import 'package:party_app/game_tabs.dart';
import 'package:party_app/group_text.dart';
import 'package:party_app/red_heart_tabs.dart';
import 'package:party_app/time_out.dart';
import 'package:party_app/truth_dare.dart';
import 'package:party_app/discover_tabs.dart';
import 'package:party_app/group_call.dart';
import 'package:party_app/login_screen.dart';
import 'package:party_app/login_with_other.dart';
import 'package:party_app/home_screen.dart';

import 'call.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Party App',
      home: HomeScreen(),
    );
  }
}

