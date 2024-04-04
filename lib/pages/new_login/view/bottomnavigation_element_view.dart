import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetNavigationBar extends StatelessWidget {
  const GetNavigationBar({
    super.key,
    this.onTap,
    this.title,
    this.isSelected = false,
    this.child,
  });
  final void Function()? onTap;
  final String? title;
  final String? child;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Padding(
      padding: EdgeInsets.only(
        left: 10.r,
        right: 10.r,
        top: 5.h,
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: !isSelected
                    ? null
                    : [
                        BoxShadow(
                          color: const Color(0xffE0965B).withOpacity(0.25),
                          blurRadius: 20.0,
                          offset: const Offset(0, 0),
                        ),
                      ],
              ),
              child: Visibility(
                visible: child != null,
                child: Image.asset(
                  child ?? '',
                  color: isSelected ? const Color(0xffFF8412) : Colors.white,
                  width: 15.h,
                  height: 15.h,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Visibility(
              visible: title != null,
              child: Text(
                title ?? '',
                style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
