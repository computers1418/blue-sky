
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_rounded_path.dart';
import 'doctor_shapes.dart';

class CustomShapeCard extends StatelessWidget {
  const CustomShapeCard(
      {super.key,
      required this.backgroundImage,
      required this.title,
      required this.content,
      required this.time});
  final ImageProvider<Object> backgroundImage;
  final String title;
  final String content;
  final String time;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      height: 296.h,
      child: RepaintBoundary(
        child: CustomPaint(
          painter: ShapePainter(
            blurStyle: BlurStyle.normal,
            shadows: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                offset: Offset(-10.w, -10.h),
                blurRadius: 10.r,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                offset: Offset(10.w, 10.h),
                blurRadius: 20.r,
              ),
            ],
            bgcolor: const Color(0xffF2F7FB),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 62.r,
                width: 62.r,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: backgroundImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.r),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF211F2B),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.r),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    content,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF83828E),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.r),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    time,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF211F2B),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorCustomShape1 extends StatelessWidget {
  const DoctorCustomShape1({super.key, required this.backgroundImage});
  final ImageProvider<Object> backgroundImage;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      height: 124.h,
      width: 120.w,
      child: Center(
        child: CustomPaint(
          painter: DoctorCustomPainter1(
            blurStyle: BlurStyle.normal,
            shadows: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                offset: Offset(-10.w, -10.h),
                blurRadius: 10.r,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                offset: Offset(10.w, 10.h),
                blurRadius: 20.r,
              ),
            ],
            bgcolor: const Color(0xffF2F7FB),
          ),
          child: ClipPath(
            clipper: DoctorCustomPath1(),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class DoctorCustomShape2 extends StatelessWidget {
//   const DoctorCustomShape2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context);
//     return SizedBox(
//       height: 50.h,
//       width: 152.w,
//       child: CustomPaint(
//         painter: DoctorCustomPainter2(
//           gradient: const LinearGradient(
//             // begin: Alignment(0.7177651524543762, 0.6035242080688477),
//             // end: Alignment(-0.44470763206481934, 0.14143607020378113),
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: [0, 0.5, 1.0],
//             colors: [
//               Color(0xffaca4fe),
//               Color.fromRGBO(91, 85, 171, 1),
//               Color.fromRGBO(43, 38, 90, 1)
//             ],
//           ),
//           blurStyle: BlurStyle.normal,
//           shadows: [
//             BoxShadow(
//               color: Colors.white.withOpacity(0.5),
//               offset: Offset(-10.w, -10.h),
//               blurRadius: 10.r,
//             ),
//             BoxShadow(
//               color: Colors.blue.withOpacity(0.1),
//               offset: Offset(10.w, 10.h),
//               blurRadius: 20.r,
//             ),
//           ],
//           bgcolor: const Color(0xffF2F7FB),
//         ),
//         child: ClipPath(
//           clipper: DoctorCustomPath2(),
//           child:

//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 30.w),
//             child: Center(
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         '4.5',
//                         style: TextStyle(
//                           fontSize: 13.sp,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Rating',
//                         style: TextStyle(
//                           fontSize: 9.sp,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         '3+',
//                         style: TextStyle(
//                           fontSize: 13.sp,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Years Exp',
//                         style: TextStyle(
//                           fontSize: 9.sp,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class DoctorCustomShape2 extends StatefulWidget {
  const DoctorCustomShape2({super.key});

  @override
  State<DoctorCustomShape2> createState() => _DoctorCustomShape2State();
}

class _DoctorCustomShape2State extends State<DoctorCustomShape2> {
  final Image _image =
      Image.asset('assets/doctor_view/doctor_view_rating.png');

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_image.image, context);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(width: 180.w, child: _image),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5.h,
          ),
          child: SizedBox(
            height: 50.h,
            width: 152.w,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '3+',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Years Exp',
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CircleInnerShadow extends StatelessWidget {
  final Color shadowColor;
  final Color backgroundColor;

  const CircleInnerShadow({
    super.key,
    required this.shadowColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30.r),
        gradient: RadialGradient(
          colors: [
            backgroundColor,
            shadowColor,
          ],
          center: const AlignmentDirectional(0.05, 0.05),
          focal: const AlignmentDirectional(0, 0),
          radius: 0.5,
          focalRadius: 0,
          stops: const [0.75, 1.0],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30.r),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0, 0.45],
                colors: [backgroundColor.withOpacity(0), backgroundColor])),
      ),
    );
  }
}

class ShadowClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }
}
