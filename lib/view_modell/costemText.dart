import 'package:flutter/material.dart';

class costemText extends StatelessWidget {
  final String text;
  final double fontZise; 



  


  

  costemText({
    required this.text ,
   required this.fontZise, 

  });

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: Text(
       
     text,
        ),
        
      
    );
  }
}