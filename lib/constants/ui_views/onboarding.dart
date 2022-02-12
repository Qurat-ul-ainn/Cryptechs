import 'package:cryptechs/constants/validations/app_colors.dart';
import 'package:cryptechs/constants/ui_views/login_signup/login.dart';
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
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                left: 50.0,
                top: 50.0,
                child: Image.asset(
                  "assets/icons/Ellipse 1.png",
                  height: 270,
                  width: 300,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/icons/Group 1.png",
                  height: 380,
                  width: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: MainTxt(
              txt: "Welcome to\n.Cryptechs",
              size: 38.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SubTxt(
              txt: "Your Best Crypto Solutions!",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0),
            width: MediaQuery.of(context).size.width * 0.45,
            height: 60,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },              color: AppColors.kBlueClr,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                "Start Now",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
