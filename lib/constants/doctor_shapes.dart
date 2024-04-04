import 'package:flutter/widgets.dart';
import 'dart:math';

class DoctorCustomPainter1 extends CustomPainter {
  const DoctorCustomPainter1({
    required this.bgcolor,
    required this.shadows,
    this.blurStyle = BlurStyle.outer,
  });
  final Color bgcolor;
  final List<BoxShadow> shadows;
  final BlurStyle blurStyle;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = bgcolor;
    Path path = Path();
    path.moveTo(0, size.height * 0.1705307);
    path.arcToPoint(Offset(size.width * 0.04950495, size.height * 0.04395121),
        radius:
            Radius.elliptical(size.width * 0.1567327, size.height * 0.1739369),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.1584158, 0),
        radius:
            Radius.elliptical(size.width * 0.1559406, size.height * 0.1730579),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.8217822, 0);
    path.arcToPoint(Offset(size.width * 0.9306931, size.height * 0.04395121),
        radius:
            Radius.elliptical(size.width * 0.1867327, size.height * 0.2072300),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.cubicTo(size.width * 0.9949505, size.height * 0.1008680, size.width,
        size.height * 0.1855840, size.width, size.height * 0.1990990);
    path.lineTo(size.width, size.height * 0.3516097);
    path.arcToPoint(Offset(size.width * 0.9522772, size.height * 0.6142182),
        radius:
            Radius.elliptical(size.width * 0.5900000, size.height * 0.6547632),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.8811881, size.height * 0.7471706),
        radius:
            Radius.elliptical(size.width * 0.5698020, size.height * 0.6323481),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.cubicTo(
        size.width * 0.7765347,
        size.height * 0.8973739,
        size.width * 0.6359406,
        size.height * 0.9581365,
        size.width * 0.5416832,
        size.height * 0.9829689);
    path.arcToPoint(Offset(size.width * 0.4059406, size.height * 0.9998901),
        radius:
            Radius.elliptical(size.width * 0.5846535, size.height * 0.6488298),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.1557426, size.height * 0.9998901);
    path.arcToPoint(Offset(size.width * 0.03693069, size.height * 0.9413251),
        radius:
            Radius.elliptical(size.width * 0.1597030, size.height * 0.1772333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(0, size.height * 0.8335348),
        radius:
            Radius.elliptical(size.width * 0.1544554, size.height * 0.1714097),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();
    for (var s in shadows) {
      var shadowPaint = Paint()
        ..color = s.color
        ..maskFilter = MaskFilter.blur(blurStyle, sqrt(s.blurRadius));
      canvas.save();
      canvas.translate(s.offset.dx, s.offset.dy);
      canvas.drawPath(path, shadowPaint);
      // canvas.drawShadow(path, s.color, sqrt(s.blurRadius), false);
      canvas.restore();
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class DoctorCustomPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.1705307);
    path.arcToPoint(Offset(size.width * 0.04950495, size.height * 0.04395121),
        radius:
            Radius.elliptical(size.width * 0.1567327, size.height * 0.1739369),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.1584158, 0),
        radius:
            Radius.elliptical(size.width * 0.1559406, size.height * 0.1730579),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.8217822, 0);
    path.arcToPoint(Offset(size.width * 0.9306931, size.height * 0.04395121),
        radius:
            Radius.elliptical(size.width * 0.1867327, size.height * 0.2072300),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.cubicTo(size.width * 0.9949505, size.height * 0.1008680, size.width,
        size.height * 0.1855840, size.width, size.height * 0.1990990);
    path.lineTo(size.width, size.height * 0.3516097);
    path.arcToPoint(Offset(size.width * 0.9522772, size.height * 0.6142182),
        radius:
            Radius.elliptical(size.width * 0.5900000, size.height * 0.6547632),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.8811881, size.height * 0.7471706),
        radius:
            Radius.elliptical(size.width * 0.5698020, size.height * 0.6323481),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.cubicTo(
        size.width * 0.7765347,
        size.height * 0.8973739,
        size.width * 0.6359406,
        size.height * 0.9581365,
        size.width * 0.5416832,
        size.height * 0.9829689);
    path.arcToPoint(Offset(size.width * 0.4059406, size.height * 0.9998901),
        radius:
            Radius.elliptical(size.width * 0.5846535, size.height * 0.6488298),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.1557426, size.height * 0.9998901);
    path.arcToPoint(Offset(size.width * 0.03693069, size.height * 0.9413251),
        radius:
            Radius.elliptical(size.width * 0.1597030, size.height * 0.1772333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(0, size.height * 0.8335348),
        radius:
            Radius.elliptical(size.width * 0.1544554, size.height * 0.1714097),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

//Copy this CustomPainter code to the Bottom of the File
class DoctorCustomPainter2 extends CustomPainter {
  const DoctorCustomPainter2({
    required this.gradient,
    required this.bgcolor,
    required this.shadows,
    this.blurStyle = BlurStyle.outer,
  });
  final Color bgcolor;
  final List<BoxShadow> shadows;
  final BlurStyle blurStyle;
  final Gradient? gradient;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.shader =
        gradient?.createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    Path path = Path();
    path.moveTo(size.width * 0.2219187, 0);
    path.lineTo(size.width * 0.2254182, 0);
    path.cubicTo(
        size.width * 0.5577842,
        size.height * 0.001620308,
        size.width * 0.7993342,
        size.height * 0.007021334,
        size.width * 0.8723114,
        0);
    path.cubicTo(
        size.width * 0.8888699,
        size.height * -0.001620308,
        size.width * 0.9320587,
        size.height * -0.007561437,
        size.width * 0.9662001,
        size.height * 0.08101539);
    path.arcToPoint(Offset(size.width * 0.9959884, size.height * 0.2076695),
        radius:
            Radius.elliptical(size.width * 0.1100205, size.height * 0.3480961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 1.000341, size.height * 0.2754523),
        radius:
            Radius.elliptical(size.width * 0.05283373, size.height * 0.1671618),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 1.000341, size.height * 0.6805293);
    path.arcToPoint(Offset(size.width * 0.9982929, size.height * 0.7277883),
        radius:
            Radius.elliptical(size.width * 0.05215090, size.height * 0.1650014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.9743940, size.height * 0.8641642),
        radius:
            Radius.elliptical(size.width * 0.1205189, size.height * 0.3813124),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.8805053, size.height * 0.9991898),
        radius:
            Radius.elliptical(size.width * 0.1313588, size.height * 0.4156090),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.09525435, size.height * 0.9991898);
    path.cubicTo(
        size.width * 0.08799932,
        size.height * 0.9991898,
        size.width * 0.03379993,
        size.height * 0.9897381,
        size.width * 0.009900990,
        size.height * 0.8641642);
    path.cubicTo(
        size.width * -0.007169682,
        size.height * 0.7755874,
        size.width * 0.0008535336,
        size.height * 0.6791790,
        size.width * 0.009900990,
        size.height * 0.5671078);
    path.arcToPoint(Offset(size.width * 0.06964834, size.height * 0.2160410),
        radius:
            Radius.elliptical(size.width * 0.2352339, size.height * 0.7442614),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.2219187, 0),
        radius:
            Radius.elliptical(size.width * 0.2365995, size.height * 0.7485822),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();

    for (var s in shadows) {
      var shadowPaint = Paint()
        ..color = s.color
        ..maskFilter = MaskFilter.blur(blurStyle, sqrt(s.blurRadius));
      canvas.save();
      canvas.translate(s.offset.dx, s.offset.dy);
      canvas.drawPath(path, shadowPaint);
      // canvas.drawShadow(path, s.color, sqrt(s.blurRadius), false);
      canvas.restore();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class DoctorCustomPath2 extends CustomClipper<Path> {
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.2219187, 0);
    path.lineTo(size.width * 0.2254182, 0);
    path.cubicTo(
        size.width * 0.5577842,
        size.height * 0.001620308,
        size.width * 0.7993342,
        size.height * 0.007021334,
        size.width * 0.8723114,
        0);
    path.cubicTo(
        size.width * 0.8888699,
        size.height * -0.001620308,
        size.width * 0.9320587,
        size.height * -0.007561437,
        size.width * 0.9662001,
        size.height * 0.08101539);
    path.arcToPoint(Offset(size.width * 0.9959884, size.height * 0.2076695),
        radius:
            Radius.elliptical(size.width * 0.1100205, size.height * 0.3480961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 1.000341, size.height * 0.2754523),
        radius:
            Radius.elliptical(size.width * 0.05283373, size.height * 0.1671618),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 1.000341, size.height * 0.6805293);
    path.arcToPoint(Offset(size.width * 0.9982929, size.height * 0.7277883),
        radius:
            Radius.elliptical(size.width * 0.05215090, size.height * 0.1650014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.9743940, size.height * 0.8641642),
        radius:
            Radius.elliptical(size.width * 0.1205189, size.height * 0.3813124),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.8805053, size.height * 0.9991898),
        radius:
            Radius.elliptical(size.width * 0.1313588, size.height * 0.4156090),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.lineTo(size.width * 0.09525435, size.height * 0.9991898);
    path.cubicTo(
        size.width * 0.08799932,
        size.height * 0.9991898,
        size.width * 0.03379993,
        size.height * 0.9897381,
        size.width * 0.009900990,
        size.height * 0.8641642);
    path.cubicTo(
        size.width * -0.007169682,
        size.height * 0.7755874,
        size.width * 0.0008535336,
        size.height * 0.6791790,
        size.width * 0.009900990,
        size.height * 0.5671078);
    path.arcToPoint(Offset(size.width * 0.06964834, size.height * 0.2160410),
        radius:
            Radius.elliptical(size.width * 0.2352339, size.height * 0.7442614),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.arcToPoint(Offset(size.width * 0.2219187, 0),
        radius:
            Radius.elliptical(size.width * 0.2365995, size.height * 0.7485822),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path.close();
    return path;
  }
}
