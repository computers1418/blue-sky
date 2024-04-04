import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(31.r, 0.r, 31.r, 31.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'lib/pages/new_login/assets/onboarding1.png',
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Text(
                      'Serving Generations Of People With Quality Healthcare',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'lib/pages/new_login/assets/onboarding2.png',
                          width: 103.57.w,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    PrimaryButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginView();
                        }));
                      },
                      title: 'GET STARTED',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
