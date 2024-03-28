// ignore_for_file: unused_field, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/screens/signin_screen.dart';
import 'package:login_signup/screens/welcome_screen.dart';

class AuthController extends GetxController{
  //AuthController.intance..
  static AuthController instance = Get.find();
  //email, passwrd, name...
 late Rx<User?> _user;
FirebaseAuth auth = FirebaseAuth.instance;

  var user;


@override
  void onReady() {
    super.onReady();
    _user= Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);

  }
  _initialScreen(User? user){
    if(user==null){
      print("signin");
      Get.offAll(()=> SignInScreen());
    }else{
      Get.offAll(() => WelcomeScreen());
    }
  }
  void register(String email, password){
    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);

    }catch(e){
      Get.snackbar("About User", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text("Account creation failed",
      style: TextStyle(color: Colors.white),
      ),
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white
        ),
      )
      );


    }
  }

}