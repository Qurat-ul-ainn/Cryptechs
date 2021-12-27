import 'package:cryptechs/constants/app_colors.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key key}) : super(key: key);

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {},
                      alignment: Alignment.topLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Text(
                    "Subscription",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(
                  "Get access to all\ncourses and features",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SubTxt(
                txt:
                    "Congrats,you earned a new budge\nand became an intermediate",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: AppColors.kBlueClr,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "All features in Basic",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: AppColors.kBlueClr,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "150+ Premium card Designs",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,bottom:10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: AppColors.kBlueClr,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Unlimited Exchange features",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomContainer(text: "Free",subText:"7 days"),
                  CustomContainer(text: "\$10",subText:"30 days"),
                ],
              ),
              Row(
                children: [
                  CustomContainer(text: "\$14",subText:"3 months"),
                  CustomContainer(text: "\$199",subText:"one time"),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: CustomButton(
                  btnFunction: () {},
                  btnTxt: "Log In",
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final text;
  final subText;

  const CustomContainer({Key key, this.text, this.subText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width * 0.36,
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.kGreyClr,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: RichText(
          text: TextSpan(
            text: '$text\n',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            children:  <TextSpan>[
               TextSpan(
                   text: subText,

                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
