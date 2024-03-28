import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path =Path();
    path.lineTo(0,size.height);
    final firstor =Offset(0, size.height -20);
        final lastCurve =Offset(30, size.height -20);
    path.quadraticBezierTo(firstor.dx,firstor.dy,lastCurve.dx,lastCurve.dy);
    
     final scoundfirstor = Offset(0, size.height -20);
     final scoundlastCurve =Offset(size.width-30, size.height -20);
          path.quadraticBezierTo(scoundfirstor.dx,scoundfirstor.dy,scoundlastCurve.dx,scoundlastCurve.dy);
          final thirdfirstor = Offset(size.width, size.height -20);
     final thirdscoundlastCurve =Offset(size.width, size.height);
     path.quadraticBezierTo(thirdfirstor.dx,thirdfirstor.dy,thirdscoundlastCurve.dx,thirdscoundlastCurve.dy);
         
    path.lineTo(size.width,0);
    path.close();
    return path;
    



  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return true;
  }

}