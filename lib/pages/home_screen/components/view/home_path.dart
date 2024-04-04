import 'package:flutter/material.dart';

class HomeProblemCustomPath extends CustomClipper<Path> {
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height * 0.4057143);
    path.lineTo(size.width, size.height * 0.8988571);
    path.cubicTo(
        size.width * 0.9256198,
        size.height * 0.8240952,
        size.width * 0.8377686,
        size.height * 0.7809524,
        size.width * 0.7438017,
        size.height * 0.7809524);
    path.arcToPoint(Offset(size.width * 0.5381818, size.height * 0.8544762),
        radius:
            Radius.elliptical(size.width * 0.6626860, size.height * 1.527333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.arcToPoint(Offset(size.width * 0.4618182, size.height * 0.9264762),
        radius:
            Radius.elliptical(size.width * 0.5623140, size.height * 1.296000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.2561983, size.height),
        radius:
            Radius.elliptical(size.width * 0.6626860, size.height * 1.527333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.cubicTo(size.width * 0.1622314, size.height, size.width * 0.07438017,
        size.height * 0.9568571, 0, size.height * 0.8820952);
    path.lineTo(0, size.height * 0.4059048);
    path.arcToPoint(Offset(size.width * 0.1760331, 0),
        radius:
            Radius.elliptical(size.width * 0.1760331, size.height * 0.4057143),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.8239669, 0);
    path.arcToPoint(Offset(size.width, size.height * 0.4057143),
        radius:
            Radius.elliptical(size.width * 0.1760331, size.height * 0.4057143),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();

    return path;
  }
}

class HomeRatingCustomPath extends CustomClipper<Path> {
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.9908207, size.height * 0.5998995);
    path.lineTo(size.width * 0.9292929, size.height * 0.9082402);
    path.arcToPoint(Offset(size.width * 0.8758838, size.height),
        radius:
            Radius.elliptical(size.width * 0.06257576, size.height * 0.1916399),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.06258838, size.height);
    path.arcToPoint(Offset(0, size.height * 0.8081667),
        radius:
            Radius.elliptical(size.width * 0.06258838, size.height * 0.1916786),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(0, size.height * 0.1916786);
    path.arcToPoint(Offset(size.width * 0.06258838, 0),
        radius:
            Radius.elliptical(size.width * 0.06258838, size.height * 0.1916786),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.8759343, 0);
    path.arcToPoint(Offset(size.width * 0.9292929, size.height * 0.09179846),
        radius:
            Radius.elliptical(size.width * 0.06256313, size.height * 0.1916013),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.9907702, size.height * 0.4001005);
    path.arcToPoint(Offset(size.width * 0.9908207, size.height * 0.5998995),
        radius:
            Radius.elliptical(size.width * 0.06256313, size.height * 0.1916013),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();

    return path;
  }
}
