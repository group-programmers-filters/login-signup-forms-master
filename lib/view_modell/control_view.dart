import 'package:login_signup/screens/auth_controller.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:login_signup/view_modell/home_model_nactvar.dart';
import 'package:login_signup/view_modell/home_view_model.dart';


class control_view extends  GetWidget<AuthController> {



  @override
  Widget build(BuildContext context) {
     return Obx(() {
      return (Get.find<AuthController>().user == null)
          ? home_model_nactva()
          : GetBuilder<home_view_model>(
              builder: (controller) => Scaffold(
                body: controller.currentScren,
                 bottomNavigationBar: bottomNavigationBar(),
              
             )
            );
    });
  }
Widget bottomNavigationBar() {
  return GetBuilder<home_view_model>(
    init: home_view_model(),
    builder: (controller)=>BottomNavigationBar(
      items: [
    
    BottomNavigationBarItem(
    activeIcon: Text('Explore'),
    label: '',
    icon:  Image.asset('assets/images/Icon_Explore.png',fit: BoxFit.contain,
    width: 20,
    ),
    ),
      BottomNavigationBarItem(
     activeIcon: Text('Cart'),
    label: '',
    icon:  Image.asset('assets/images/Icon_Cart.png',fit: BoxFit.contain,
    width: 20,
    ),
    
    ),
    BottomNavigationBarItem(
    activeIcon: Text('Account'),
    label: '',
    icon:  Image.asset('assets/images/Icon_User.png',fit: BoxFit.contain,
    width: 20,
    ),
    ),
    
      ],
      currentIndex: controller.navigtorValue,
      onTap: (index){
controller.changeSelectedValue(index);


      } ,
     elevation: 0,
     selectedItemColor: Colors.black,
     backgroundColor: Colors.grey.shade50,
    ),
  );
 }
 

}
