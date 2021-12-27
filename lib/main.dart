import 'package:cryptechs/constants/ui_views/exchanges.dart';
import 'package:cryptechs/constants/ui_views/login_signup/custom_navigation.dart';
import 'package:cryptechs/constants/ui_views/login_signup/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptechs',
      home: HomeScreen(),
    );
  }
}


