import 'package:flutter/material.dart';

class AppClipper extends CustomClipper<Path> {
  final double cornerSize;
  final double diagonalHeight;

  AppClipper({this.cornerSize, this.diagonalHeight, bool roundedBottom});
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, cornerSize * 1.5);
    path.lineTo(0, size.height - cornerSize);
    path.quadraticBezierTo(0, size.height, cornerSize, size.height);
    path.lineTo(size.width - cornerSize, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerSize);
    path.lineTo(size.width, diagonalHeight + cornerSize);
    path.quadraticBezierTo(size.width, diagonalHeight, size.width - cornerSize,
        diagonalHeight * .9);
    path.lineTo(cornerSize * 2, cornerSize);
    path.quadraticBezierTo(0, 0, 0, cornerSize * 1.5);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
