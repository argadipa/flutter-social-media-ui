import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Create a stright line 4/5 of height
    path.lineTo(0, 4 * size.height / 5);
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, 4 * size.height / 5);
    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);
    Offset curvePoint2 = Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset finalPoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, finalPoint.dx, finalPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
