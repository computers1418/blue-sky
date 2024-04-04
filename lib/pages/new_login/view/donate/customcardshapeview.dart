import 'package:blue_sky/pages/new_login/common_widget/shapes/custom_rounded_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShapeCard extends StatelessWidget {
  const CustomShapeCard(
      {super.key,
      this.backgroundImage,
      required this.title,
      required this.content,
      required this.time});
  final ImageProvider<Object>? backgroundImage;
  final String title;
  final String content;
  final String time;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      height: 296.h,
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
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 31.r,
              backgroundImage: backgroundImage,
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
    );
  }
}
