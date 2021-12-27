import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
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
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    MainTxt(
                      txt: "Profile",
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: AppColors.kBlueClr, shape: BoxShape.circle),
                    ),
                  
                  Positioned(
                    child: Container(
                     // padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: AppColors.kBlueClr, shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          alignment: Alignment.center,
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Full Name",
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
                  txt: "Email",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "example@gmail.com",
                  border: UnderlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Password",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ".......",
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
