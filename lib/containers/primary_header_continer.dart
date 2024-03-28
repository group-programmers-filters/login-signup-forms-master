import 'package:flutter/material.dart';
import 'package:login_signup/containers/ciculer_continer.dart';

class TprimaryHeaderContinar extends StatelessWidget {
  const TprimaryHeaderContinar({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
                color: Color(0xFF4b68ff),
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                    
                    Positioned(top: -150,right: -250,child: TcrircularContainer(backgroundColor: Colors.white.withOpacity(0.1),)),
                      Positioned(top: 100,right: -300,child: TcrircularContainer(backgroundColor: Colors.white.withOpacity(0.1),)),
                  
                    ],
                  ),
                ),
              )  ;
  }
}
