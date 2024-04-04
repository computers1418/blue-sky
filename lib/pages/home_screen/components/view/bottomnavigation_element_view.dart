import 'package:blue_sky/constants/hex_color_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
as custom_decoration;

  class GetNavigationBar extends StatelessWidget {
    const GetNavigationBar({
      super.key,
      required this.title,
      this.isSelected = false,
      required this.child,
      required this.onTap,
      this.isDisabledTitle = false,
      this.doctorname,
      this.doctorcity,
    });
    final String? title;
    final String? child;
    final bool isSelected;
    final String? doctorname;
    final Widget? doctorcity;
    final bool isDisabledTitle;
    final void Function() onTap;
    @override
    Widget build(BuildContext context) {
      ScreenUtil.init(context);
      return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.r,
              right: 10.r,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height:
                        (title.toString().contains('Dark Mode')) ? 7.5.h : 15.h,
                  ),
                  Visibility(
                    visible: child != null,
                    child: Container(
                      height:
                          (title.toString().contains('Dark Mode')) ? 55.5.r :  40.5.r,
                      width:
                          (title.toString().contains('Dark Mode')) ? 55.5.r :  40.5.r,
                      decoration: (title.toString().contains('Dark Mode'))
                          ? const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                stops: [0.0, 1.0],
                                colors: [
                                  Color.fromRGBO(91, 85, 171, 1),
                                  Color.fromRGBO(43, 38, 90, 1)
                                ],
                              ),
                              shape: BoxShape.circle,
                            )
                          : isSelected
                              ? custom_decoration.BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    custom_decoration.BoxShadow(
                                      color: const Color.fromRGBO(91, 85, 171, 1)
                                          .withOpacity(0.5),
                                      blurRadius: 4,
                                      offset: const Offset(-1, -1),
                                      inset: true,
                                    ),
                                    custom_decoration.BoxShadow(
                                      color: const Color.fromRGBO(43, 38, 90, 1)
                                          .withOpacity(0.5),
                                      blurRadius: 4,
                                      offset: const Offset(1, 1),
                                      inset: true,
                                    ),
                                  ],
                                )
                              : custom_decoration.BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    custom_decoration.BoxShadow(
                                      color: const Color.fromRGBO(91, 85, 171, 1)
                                          .withOpacity(0.5),
                                      blurRadius: 42,
                                      offset: const Offset(-1, -1),
                                      inset: true,
                                    ),
                                    custom_decoration.BoxShadow(
                                      color: const Color.fromRGBO(43, 38, 90, 1)
                                          .withOpacity(0.5),
                                      blurRadius: 4,
                                      offset: const Offset(1, 1),
                                      inset: true,
                                    ),
                                  ],
                                ),
                      child: Padding(
                        padding: EdgeInsets.all(!(title.toString().contains('Dark Mode')) ?10.r:15.r),
                        child: Image.asset(
                          child.toString(),
                          color: (title.toString().contains('Dark Mode'))
                              ? Colors.white
                              : (title.toString().contains('Booking'))
                                  ? '#FF8412'.toColor()
                                  : isSelected
                                      ? '#FF8412'.toColor()
                                      : Colors.white,
                          height: (title.toString().contains('Dark Mode'))
                              ? 25.h
                              : 20.h,
                          width: (title.toString().contains('Dark Mode'))
                              ? 25.w
                              : 20.w,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !isDisabledTitle,
                    child: Text(
                      (title.toString().contains('Location'))
                          ? doctorname.toString()
                          : title?.toString() ?? '',
                      style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Visibility(
                    visible: doctorcity != null,
                    child: doctorcity ?? const SizedBox.shrink(),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ));
    }
  }
