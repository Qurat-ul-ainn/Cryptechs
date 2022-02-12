import 'package:cryptechs/constants/validations/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile Update',style:TextStyle(color:Colors.black)),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        automaticallyImplyLeading: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
               margin: EdgeInsets.symmetric(vertical: 40.0),
                padding: EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                    color: AppColors.kBlueClr, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 38.0,
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
                  top: 50.0,
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
