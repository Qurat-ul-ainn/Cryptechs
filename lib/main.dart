import 'package:cryptechs/constants/ui_views/login_signup/login.dart';
import 'package:flutter/material.dart';



 void  main() async{
   //WidgetsFlutterBinding.ensureInitialized();
   //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptechs',
      home: LoginScreen()
    );
  }
}


