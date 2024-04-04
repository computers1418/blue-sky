import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final bool expanded;
  final double? width;
  final double? elevation;
  final Color? titleColor;
  final Widget? child;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.padding,
    this.color,
    this.borderColor,
    this.expanded = true,
    this.width,
    this.elevation,
    this.titleColor,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0.r))),
      onTap: onPressed,
      child: SizedBox(
        width: width ?? (expanded ? double.infinity : width),
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(35.r)),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF131040),
                  Color(0xFF332C6C),
                ],
              )),
          child: Center(
            child: child ?? Text(
              title.toString(),
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
