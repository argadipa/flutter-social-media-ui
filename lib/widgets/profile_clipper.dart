import 'package:flutter/material.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset middleCurvePoint = Offset(size.width / 2, size.height);
    Offset endCurvePoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(middleCurvePoint.dx, middleCurvePoint.dy,
        endCurvePoint.dx, endCurvePoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
