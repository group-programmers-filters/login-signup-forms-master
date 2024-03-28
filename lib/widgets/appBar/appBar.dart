

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_signup/widgets/appBar/size/size.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key, 
    this.title,
     this.showBackArron=false,
      this.leadingicon, 
      this.leadingOnPressed,
       this.action,
       });

 final Widget ?title;
  final bool showBackArron;
  final IconData ?leadingicon;
  final VoidCallback? leadingOnPressed;
  final List<Widget>?action;
  @override
  Widget build(BuildContext context) {
   
    
    return Padding(padding: EdgeInsets.symmetric(horizontal:TSize.md),child: AppBar(
      automaticallyImplyLeading: false,
      leading:showBackArron
      ?IconButton(onPressed:()=> Get.back(), icon:const Icon( Iconsax.arrow_left))
      : leadingicon!=null? IconButton(onPressed:leadingOnPressed, icon: Icon(leadingicon)):null,
      title: title,
      actions: action,

      ),
      );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
  
  
  

  
  

}



