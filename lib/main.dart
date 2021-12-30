import 'package:cryptechs/constants/ui_views/add_new_nft.dart';
import 'package:cryptechs/constants/ui_views/exchanges.dart';
import 'package:cryptechs/constants/ui_views/login_signup/home.dart';
import 'package:cryptechs/constants/ui_views/login_signup/profile_update.dart';
import 'package:cryptechs/constants/ui_views/news_feed.dart';
import 'package:cryptechs/constants/ui_views/profile_screen.dart';
import 'package:cryptechs/constants/ui_views/sub_news_feed.dart';
import 'package:cryptechs/constants/ui_views/subscription_screen.dart';
import 'package:cryptechs/test.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptechs',
      home: HomeScreen()//ExchangesScreen(),
    );
  }
}


