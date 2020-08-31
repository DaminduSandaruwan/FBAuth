
import 'package:fbauth/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class FacebookAuth extends StatefulWidget {
  @override
  _FacebookAuthState createState() => _FacebookAuthState();
}

class _FacebookAuthState extends State<FacebookAuth> {

  FacebookLogin fbLogin = new FacebookLogin();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Login FB"),
          onPressed: (){
            fbLogin.logIn(['email','public_profile']).then((result) {
              // switch(result.status){
              //   case FacebookLoginStatus.loggedIn:
              //   FirebaseAuth.instance.signInWithFacebook(accessToken: result.accessToken.token)
              //   .then((signedInUser){
              //     print('Signed in as ${signedInUser.displayName}');
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              //   }).catchError((e){
              //     print(e);
              //   });
              // }
            }).catchError((e){
              print(e);
            });
          },
        ),
      ),
    );
  }
}