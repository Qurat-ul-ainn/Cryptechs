import 'package:cryptechs/constants/ui_views/login_signup/login.dart';
import 'package:cryptechs/constants/validations/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

import '../../app_colors.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _passReEnterController = TextEditingController();

  bool _autoValidate = false;
  bool inVisiblePass = true;
  bool inVisibleConfirm = true;
  final registerKey = GlobalKey<FormState>();



  void _onLoading() {
    AlertDialog alertDialog = AlertDialog(
      content: new Row(
        children: <Widget>[
          new CircularProgressIndicator(),
          SizedBox(
            width: 30,
          ),
          new Text("Registering.. Please Wait !"),
        ],
      ),
    );
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => alertDialog,
    );
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog

      //userRegistration() ;
      // msg  = data['msg'].toString();
      //debugPrint('msg ${data['msg'].toString()}');
    });
  }

  void _validateSupport(email,pass,cnfPass) {
    if (registerKey.currentState.validate()) {
      registerKey.currentState.save();
      registration(email,pass,cnfPass);
     // _onLoading();
      debugPrint('register success');
      // postQuery();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }








  void _togglePasswordView() {
    setState(() {
      inVisiblePass = !inVisiblePass;
    });
  }

  void _toggleConfirmPassView() {
    setState(() {
      inVisibleConfirm = !inVisibleConfirm;
    });
  }




  Future<bool> registration(String email, String pass, String confirmPass) async {
    _onLoading();
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);


        Navigator.of(context).pop();
        print('result is $result');
        print('hello firebase');
        FirebaseUser user = result.user;

      UserUpdateInfo info = UserUpdateInfo();
      // info.displayName=homePage;
      user.updateProfile(info);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  var emailTrue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Form(
            key: registerKey,
            autovalidate: true,
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
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        btnText: "Log in",
                        btntTxtClr: Colors.blue,
                      ),
                    ],
                  ),
                ),
                MainTxt(txt: "Sign up\nto continue", size: 28.0),
                Padding(
                  padding: EdgeInsets.only(
                    top: 28.0,
                  ),
                  child: SubTxt(
                    txt: "Email Address",
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  autovalidate: false,
                  validator: (val) {
                    String pattern = Variables.emailPattern;
                    RegExp regExp = new RegExp(pattern);
                    if (val.length == 0) {
                      return "Email is required";
                    } else if (!regExp.hasMatch(val)) {
                      return "Enter correct email";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "example.mail@gmail.com",
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
                  controller: _passController,
                  validator: (String value) {
                    if (value.length == 0) {
                      return "Password is required !";
                    } else if(value.length < 6){
                      return "Password must be 6 character long";
                    }else {
                      return null;
                    }
                  },
                  obscureText: inVisiblePass,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: UnderlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        inVisiblePass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: _togglePasswordView,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 28.0,
                  ),
                  child: SubTxt(
                    txt: "Confirm Password",
                  ),
                ),
                TextFormField(
                  controller: _passReEnterController,
                  validator: (String value) {
                    if (value.length == 0) {
                      return "Password confirmation is required !";
                    }
                    if(value != _passController.text){
                      return "Not match!!";

                    }
                    else {
                      return null;
                    }
                  },
                  obscureText: inVisibleConfirm,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: UnderlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        inVisibleConfirm == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: _toggleConfirmPassView,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                  child: CustomButton(
                    btnFunction: () async {
                      var gEmail = _emailController.text.toString().trim();
                      var gPass = _passController.text.toString().trim();
                      var gConfirmPass =    _passReEnterController.text.toString().trim();
                      _validateSupport(gEmail, gPass, gConfirmPass);
                      //bool gResult = await registration(gEmail, gPass, gConfirmPass);
                      // if (gPass == gConfirmPass && gResult) {
                      //   _validateSupport(gEmail, gPass, gConfirmPas);
                      //
                      //   Navigator.of(context)
                      //       .push(MaterialPageRoute(builder: (context) {
                      //     return LoginScreen();
                      //   }
                      //   ));
                      // }
                    },
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
                        style:
                            TextStyle(color: AppColors.kGreyClr, fontSize: 25),
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
                    onPressed: () {

                    },
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
      ),
    );
  }
}
