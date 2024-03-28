import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_signup/view_modell/cart_view.dart';


class home_model_nactva extends StatelessWidget {
  const home_model_nactva({super.key});
  
static String id = "/home_model_nactva";
  


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode =hsdiw.isDarkMode(context);
    var TColors;
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,

          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          backgroundColor:  darkMode ? TColors.black :Colors.white,
          indicatorColor: darkMode ?  Colors.white.withOpacity(0.1) :Colors.black.withOpacity(0.1),
        
          destinations:const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
           NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ]),
      ),
      body: Obx(() => controller.screns[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
 
  final  Rx<int> selectedIndex =0.obs;
  final screns =
  [const cart_view(),  Container(color: Colors.purple,), Container(color: Colors.orange,), Container(color: Colors.blue,),
  ];
}
class hsdiw {
   static  bool isDarkMode(BuildContext context){
  return Theme.of(context).brightness ==  Brightness.dark;
 }
}

