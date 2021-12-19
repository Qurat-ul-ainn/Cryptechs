import 'package:cryptechs/constants/ui_views/ui_components.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Stack(
            children: [
             Positioned(
               left: 50.0,
               top: 50.0,
               child:  Image.asset(
                 "assets/icons/Ellipse 1.png",
                 height: 270,width: 300,
                 fit: BoxFit.contain,
               ),
             ),
              Positioned(
                child:  Image.asset(
                  "assets/icons/Group 1.png",
                  height: 380,width: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: MainTxt(txt: "Welcome to\n.Cryptechs",),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SubTxt(txt: "Your Best Crypto Solutions!",),
        ),

      ],
    ),
        )
    );
  }
}
