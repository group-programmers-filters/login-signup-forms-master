import 'package:flutter/material.dart';
import 'package:login_signup/widgets/appBar/size/size.dart';

class TAppBarTHeme{
  TAppBarTHeme._();
  static const LingthAppBar =AppBarTheme(
    elevation: 0,centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData( color: Colors.black,size: TSize.iconMod),
    actionsIconTheme: IconThemeData(color: Colors.black,size: TSize.iconMod),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black),

    

  );
  static const datkAppBarTheme =AppBarTheme(
    elevation: 0,centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData( color: Colors.black,size: TSize.iconMod),
    actionsIconTheme: IconThemeData(color: Colors.black,size: TSize.iconMod),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black),

    

  );
  
}