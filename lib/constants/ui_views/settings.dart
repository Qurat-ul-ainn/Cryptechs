import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      alignment: Alignment.topLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MainTxt(
                        txt: "Settings",
                      ),
                    ),
                  ],
                ),
              ),
              CustomView(
                heading: "Email",
                txt: "Example@gmail.com",
                icon: Icon(Icons.email),
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
              CustomView(
                heading: "Email",
                txt: "USD",
                icon: Icon(Icons.monetization_on),
              ),
              CustomView(
                heading: "Email",
                txt: "Example@gmail.com",
                icon: Icon(Icons.email),
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
              CustomView(
                heading: "Touched Pin",
                txt: "",
                icon: Image.asset(
                  "assets/icons/finger.jpg",
                  height: 25,
                  width: 25,
                ),
              ),
              CustomView(
                heading: "Payment Method",
                txt: "",
                icon: Icon(Icons.payment_rounded),
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
              CustomView(
                heading: "App Version",
                txt: "10V.36T",
                icon: Icon(Icons.auto_awesome_motion),
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ListViewComponent for create sale bill B screen
class CustomView extends StatelessWidget {
  final heading;
  final icon;
  final txt;

  const CustomView({Key key, this.heading, this.icon, this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              heading,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0, color: AppColors.kGreyClr),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kGreyClr,
              ),
              alignment: Alignment.centerRight,
              onPressed: () {})
        ],
      ),
    );
  }
}
