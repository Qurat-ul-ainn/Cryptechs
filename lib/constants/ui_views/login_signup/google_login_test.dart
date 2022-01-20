import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';





class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key key}) : super(key: key);

  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {

  bool _isLoggedIn = false;
  //final Map _userObj = {};
   GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:Center(
            child: _isLoggedIn ?
            Column(
                children:[
                  SizedBox(height:100),
                  Image.network(_userObj.photoUrl.toString()),
                  Text(_userObj.displayName.toString()),
                  Text(_userObj.email),
                  RaisedButton(
                    child: Text('Logout'),
                    onPressed: (){
                      print('google sign in');
                      _googleSignIn.signOut().then((value){
                        setState(() {
                          _isLoggedIn = false;
                        });
                      }).catchError((e) {
                      });
                    },
                  ),
                 /* MyCustomButton(
                    color: Colors.white,
                    size: 20.0,
                    btnTxt: 'Log Out',
                    methods: (){
                      print('google sign in');
                      _googleSignIn.signOut().then((value){
                        setState(() {
                          _isLoggedIn = false;
                        });
                      }).catchError((e) {
                      });
                    },
                  ),*/
                ]
            )
                :
            Center(
              child:RaisedButton(
                color: Colors.white,
               // size: 20.0,
                child: Text('Login With Google'),
                onPressed: (){
                  print('google sign in');
                  _googleSignIn.signIn().then((userData){
                    setState(() {
                      _isLoggedIn = true;
                      _userObj = userData;
                      print('user email ${_userObj.authentication}');
                    });
                  } ).catchError((e) {
                    print(e);
                  });
                },
              ),
            ),
          )
      ),
    );
  }
}



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
  }catch (e) {
    print(e.message);
  }
}