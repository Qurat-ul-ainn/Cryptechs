import 'package:cryptechs/constants/ui_views/login_signup/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

import '../../app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SubTxt(
                      txt: "Have an account?",
                    ),
                    CustomTextButton(
                      btnFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                      },
                      btnText: "Log in",
                      btntTxtClr: Colors.blue,
                    ),
                  ],
                ),
              ),
              MainTxt(
                txt: "Sign up\nto continue",
                size:28.0
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Email Address",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "example.mail@gmail.com",
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.check_box_outlined,
                  ),
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
                  hintText: "Enter Password",
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                ),
                child: SubTxt(
                  txt: "Confirm Password",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                child: CustomButton(
                  btnFunction: () {},
                  btnTxt: "Sign Up",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: AppColors.kGreyClr,
                    height: 2.0,
                    width: MediaQuery.of(context).size.width * 0.13,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 13.0),
                    child: Text(
                      "or",
                      style: TextStyle(color: AppColors.kGreyClr, fontSize: 25),
                    ),
                  ),
                  Container(
                    color: AppColors.kGreyClr,
                    height: 2.0,
                    width: MediaQuery.of(context).size.width * 0.13,
                  )
                ],
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                    child: Image.asset(
                      "assets/icons/google.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
