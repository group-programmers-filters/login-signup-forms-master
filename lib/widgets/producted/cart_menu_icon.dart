import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class TCarTcountTerIcon extends StatelessWidget {
  const TCarTcountTerIcon({super.key,  required this.onPressed, required this.iconcolor});
 final Color iconcolor;
 final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                 IconButton(onPressed:onPressed, icon:  Icon(Iconsax.shopping_bag,color:iconcolor,)),
                 Positioned(
                  right: 0,

                   child: Container(
                    width: 10,
                    height: 10,
                    decoration:BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ) ,
                    child: Container(
                      child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white,fontSizeFactor: 0.8),
                      ),

                    ),
                   ),
                 ),
              ],
             );
  }
}