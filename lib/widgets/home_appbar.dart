import 'package:flutter/material.dart';
import 'package:login_signup/widgets/appBar/appBar.dart';
import 'package:login_signup/widgets/producted/cart_menu_icon.dart';
import 'package:login_signup/widgets/ttext_wideget.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey)),
                Text(TTexts.homeAppbarsuoTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white)),
              ],
            ),
            action: [
             TCarTcountTerIcon(onPressed: () {  }, iconcolor: Colors.white,),
            ],
           );
  }
}