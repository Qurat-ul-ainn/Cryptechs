import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
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
                   width: MediaQuery.of(context).size.width * 0.12,
                 ),
                 MainTxt(
                   txt: "Profile Update",
                 ),
               ],
             ),
           ),
              Container(
               margin: EdgeInsets.all(50.0),
                padding: EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                    color: AppColors.kBlueClr, shape: BoxShape.circle),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    alignment: Alignment.center,
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "First Name",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Tony",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Last Name",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Shark",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                ),
                child: CustomButton(
                  btnFunction: () {},
                  btnTxt: "Save",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
