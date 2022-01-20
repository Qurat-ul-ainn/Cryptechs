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



class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();


  bool isLoading = false;


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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SubTxt(
                        txt: "New User?",
                      ),
                      CustomTextButton(
                        btnFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        btnText: "Create account",
                        btntTxtClr: Colors.blue,
                      ),
                    ],
                  ),
                ),
                MainTxt(
                  txt: "Log in\nto continue",
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
                  padding: const EdgeInsets.only(
                    top: 28.0,
                  ),
                  child: SubTxt(
                    txt: "Password",
                  ),
                ),
                TextFormField(
                  controller: _passController,
                  obscureText: inVisiblePass,

                  validator: (String value){
                    if(value.length == 0)
                    {
                      return "Password is required !";
                    }else {
                      return null;
                    }
                  },
                  decoration:  InputDecoration(
                    hintText: "Enter Password",
                    border: UnderlineInputBorder(),
                    suffixIcon:IconButton(
                      icon: Icon(inVisiblePass == true? Icons.visibility_off :Icons.visibility,),
                      onPressed: _togglePasswordView,
                    ),

                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      btnFunction: () {},
                      btnText: "Forgot Password",
                      btntTxtClr: AppColors.kGreyClr,
                    )),
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
                    btnTxt: "Log In",
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
                    onPressed: (){
                      _googleSignUp();
                    },
                    // onPressed: () {
                    //   print('google sign in');
                    //   _googleSignIn.signIn().then((userData){
                    //     setState(() {
                    //       _isLoggedIn = true;
                    //       _userObj = userData;
                    //     });
                    //   } ).catchError((e) {
                    //     print(e);
                    //   });
                    // },
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



//GoogleSignUp
Future<void> _googleSignUp() async {
  try {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ],
    );
    final FirebaseAuth _auth = FirebaseAuth.instance;

    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);

    return user;
    HomeScreen();
  }catch (e) {
    print(e.message);
  }
}