import 'package:flutter/material.dart';


class customButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  customButtonSocial({
    required this.text,
    required this.imageName,
    required this.onPress,
  }) {
    // TODO: implement CustomButtonSocial
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child: FilledButton(
        onPressed: onPress(),
        style:ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        ) ,
        child: Row(
          children: [
            Image.asset(imageName),
            SizedBox(
              width: 100,
            ),
            
          ],
        ),
      ),
    );
  }
}
