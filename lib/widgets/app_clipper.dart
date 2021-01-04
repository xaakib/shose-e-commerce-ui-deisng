import 'package:flutter/material.dart';

class AppClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
