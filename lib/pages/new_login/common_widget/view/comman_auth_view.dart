import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/widgets/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommanAuthView extends StatelessWidget {
  CommanAuthView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    this.onPressed,
    required this.imageUrl,
    this.isSignup,
    this.isSignIn,
    this.isChangePassword,

  });
  final Widget title;
  final String subtitle;
  final String buttonTitle;
  final Function()? onPressed;
  final String imageUrl;
  bool? isSignup = false;
  bool? isSignIn = false;
  bool? isChangePassword = false;

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
                padding: EdgeInsets.fromLTRB(25.r, 49.r, 25.r, 25.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        if(isSignIn == true)
                          {
                            PopupMessageOnBack().showSignInSuccessPopup(context);
                          }
                        else if(isSignup == true)
                        {
                          PopupMessageOnBack().showSignUpSuccessPopup(context);
                        }
                        else if(isChangePassword == true)
                        {
                          PopupMessageOnBack().showChangePassSuccessPopup(context);
                        }
                      },
                      child: Image.asset(
                        'lib/pages/new_login/assets/Layer 2.png',
                        width: 24.h,
                        height: 24.h,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 43.w,
                                  height: 43.w,
                                  child: Image.asset("lib/pages/new_login/assets/weather.png")),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                '13°C',
                                style: TextStyle(
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.orange),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                    size: 10.h,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    'Delhi',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(flex: 3, child: title),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Image.asset("lib/pages/new_login/assets/wave.png"),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.r),
                      child: Center(
                          child: SizedBox(
                              height: 202.h,
                              width: 302.w,
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.contain,
                              ))),
                    ),
                    SizedBox(height: 20.h),
                    PrimaryButton(
                      onPressed: onPressed,
                      title: buttonTitle,
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
