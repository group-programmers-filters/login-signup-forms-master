
import 'package:flutter/material.dart';

class custom_text extends StatelessWidget {
  final String text;



  final Color color;

  final Alignment alignment;

 

  

  custom_text({
    required this.text ,
   
   required this.alignment ,
   required this.color, 

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
       
     
        ),

      ),
    );
  }
}
