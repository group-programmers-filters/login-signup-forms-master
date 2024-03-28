import 'package:flutter/material.dart';
import 'package:login_signup/constent.dart';
import 'package:login_signup/widgets/custom_text.dart';




class customButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  customButton({
    required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      
      ),
     
      
      onPressed: onPress(),
     
      child:
       custom_text(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      
      ),
    );
  }
}
