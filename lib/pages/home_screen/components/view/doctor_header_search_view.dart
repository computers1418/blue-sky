import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_utilities/commen_strings.dart';


class DoctorHeaderSearchView extends StatelessWidget {
  const DoctorHeaderSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                  text: 'LET’S',
                  style: TextStyle(
                    color: const Color(0xff211F2B),
                    fontSize: 24.sp,
                    letterSpacing: 1.w,
                    fontWeight: FontWeight.w900,
                  ),
                  children: [
                    TextSpan(
                      text: ' FIND ',
                      style: TextStyle(
                        color: const Color(0xffFF8412),
                        fontSize: 24.sp,
                        letterSpacing: 1.w,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: 'YOUR CONSULTANT',
                      style: TextStyle(
                        color: const Color(0xff211F2B),
                        fontSize: 24.sp,
                        letterSpacing: 1.w,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 0,
              child: SizedBox(
                height: 60.r,
                width: 60.r,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        '${CommonStrings.image}dr_profile.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: Colors.white,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
