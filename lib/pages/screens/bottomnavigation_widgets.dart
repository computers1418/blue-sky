import 'package:blue_sky/constants/hex_color_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class GetCustomNavigationBar extends StatelessWidget {
  const GetCustomNavigationBar({
    super.key,
    required this.title,
    required this.child,
    required this.onTap,

  });
  final String? title;
  final String? child;

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
            left: 6.r,
            right: 6.r,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height:
                  (title.toString().contains('Dark Mode')) ? 15.h : 16.h,
                ),
                Visibility(
                  visible: child != null,
                  child: Container(
                    height:
                    38.h,
                    width:38.h,
                    decoration: (title.toString().contains('Dark Mode'))
                        ? const  BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/menu_app_bar/moon.png'))
                    ) :
                    const BoxDecoration(
                     image: DecorationImage(image: AssetImage('assets/menu_app_bar/ellipse.png'))
                    ),
                    child:((!title.toString().contains('Dark Mode'))? Padding(
                      padding: EdgeInsets.all(12.r),
                      child: SvgPicture.asset(
                        child.toString(),
                        color: (title.toString().contains('Dark Mode'))
                            ? Colors.white
                            : (title.toString().contains('Booking'))
                            ? '#FF8412'.toColor()
                            :  Colors.white,
                        height: (title.toString().contains('Dark Mode'))
                            ? 25.h
                            : 20.h,
                        width: (title.toString().contains('Dark Mode'))
                            ? 25.w
                            : 20.w,
                      ),
                    ):const SizedBox()),
                  ),
                ),
                const SizedBox(height: 2,),
                Text(
                   title?.toString() ?? '',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(height: 10,),
                const Spacer(),
              ],
            ),
          ),
        ));
  }
}
