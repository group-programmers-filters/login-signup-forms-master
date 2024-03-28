import 'package:flutter/material.dart';



import 'package:login_signup/containers/primary_header_continer.dart';

import 'package:login_signup/widgets/home_appbar.dart';



class cart_view extends StatelessWidget {
  const cart_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           TprimaryHeaderContinar(child: Column(
            children: [
          THomeAppBar(),
            ],
           ), 
            
        
            
              
            ),
            
          ],
       
              ),
      
          
        ),
      
      
    );
  }
}



