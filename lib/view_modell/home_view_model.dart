import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view_modell/cart_view.dart';

import 'package:login_signup/view_modell/home_model_nactvar.dart';
import 'package:login_signup/view_modell/provail_view.dart';

class home_view_model extends GetxController{
  Widget _currentScren= home_model_nactva();
get  currentScren =>_currentScren;
 int _navigtorValue =0;
 get navigtorValue =>_navigtorValue;
 void changeSelectedValue(int _selectedValue){
_navigtorValue= _selectedValue;
switch(_navigtorValue){
case 0 :{
  _currentScren = home_model_nactva();
  break;
}
case 1 :{
  _currentScren =cart_view();
  break;
}
case 2 :{
  _currentScren =provail_view();
  break;
}

}
update();
 }
}