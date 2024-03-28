import 'package:flutter/material.dart';
import 'package:login_signup/cerved_edges/TCustomCurvedEdges.dart';

class TCurvedEdgewidget extends StatelessWidget {
  const TCurvedEdgewidget({super.key, this.child});
 final Widget ?child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
            clipper: TCustomCurvedEdges(),
              child: child,
            );
  }
}