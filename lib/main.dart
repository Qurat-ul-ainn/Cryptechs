import 'package:flutter/material.dart';
import 'constants/ui_views/login_signup/enter_pin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptechs',
      home: PinScreen(),
    );
  }
}


