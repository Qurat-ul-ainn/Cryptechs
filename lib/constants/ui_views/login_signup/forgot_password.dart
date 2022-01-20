import 'package:cryptechs/constants/app_colors.dart';
import 'package:cryptechs/constants/ui_views/login_signup/home.dart';
import 'package:cryptechs/constants/ui_views/login_signup/signup.dart';
import 'package:cryptechs/constants/validations/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';
import 'package:cryptechs/glooble_key.dart';
import 'package:google_sign_in/google_sign_in.dart';


class ResetPassScreen extends StatefulWidget {
  @override
  _ResetPassScreenState createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  Future<FirebaseUser> ifRegister(String email, String pass) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      AuthResult result =
      await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }


  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // FirebaseUser user;

  // void signInWithGoogle()async
  // {
  //   final GoogleSignInAccount googleSignInAccount =
  //   await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleSignInAuthentication =
  //   await googleSignInAccount.authentication;
  //   final AuthCredential credential = GoogleAuthProvider.getCredential(
  //     accessToken: googleSignInAuthentication.accessToken,
  //     idToken: googleSignInAuthentication.idToken,
  //   );
  //   await _auth.signInWithCredential(credential);
  //   user=await _auth.currentUser();
  //
  // }

  bool inVisiblePass = true;

  void _togglePasswordView() {
    setState(() {
      inVisiblePass = !inVisiblePass;
    });
  }



  bool _isLoggedIn = false;
  //final Map _userObj = {};
  GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Form(
            key: VariableKeys.registerKey,
            autovalidate: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child:Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                MainTxt(
                  txt: "Forgot\nPassword",
                  size: 28.0,
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
                  decoration: const InputDecoration(
                    hintText: "example.mail@gmail.com",
                    border: UnderlineInputBorder(),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                  child: CustomButton(
                    btnFunction: () async {
                      final email = _emailController.text.toString().trim();
                      final pass = _passController.text.toString().trim();

                      FirebaseUser user = await ifRegister(email, pass);

                      if (user != null) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      } else {
                        print('null');
                      }
                    },
                    btnTxt: "Reset Password",
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
