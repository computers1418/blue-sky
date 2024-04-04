import 'dart:convert';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_text_field.dart';
import 'package:blue_sky/pages/new_login/view/password_success_view.dart';
import 'package:blue_sky/util/network/api_urls.dart';
import 'package:blue_sky/util/network/http_methods.dart';
import 'package:blue_sky/widgets/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class SetNewPassword extends StatefulWidget {
  String userName;
  String otp;
  SetNewPassword({super.key,required this.userName,required this.otp});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordCont = TextEditingController();
  bool loader = false;

  @override
  void dispose() {
    // TODO: implement dispose
    passwordCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: WillPopScope(
        onWillPop: ()
        {
          return Future.value(PopupMessageOnBack().showNewPasswordPopup(context));
        },
        child: Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.r,25.r, 29.r,1.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          PopupMessageOnBack().showNewPasswordPopup(context);
                        }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 40,),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(29.r,10.r, 29.r, 29.r),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
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
                                        fontSize: 36.sp,
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
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Set New',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 36.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Password',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset("lib/pages/new_login/assets/wave.png"),
                        SizedBox(height: 40.h),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Your OTP Was Correct',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffFF8412)),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Your New password must be different from previously used password.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        SizedBox(
                          height: 15.h,
                        ),
                        PrimaryTextField(
                          controller: passwordCont,
                            obscure: true,
                            prefixIcon: Image.asset("lib/pages/new_login/assets/password.png"),
                            hintText: "New Password",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password must be 8 Characters with UPPER case, lower case, numeric and special characters @#\$%&';
                              } else {
                                return null;
                              }
                            }),
                        SizedBox(
                          height: 15.h,
                        ),
                        PrimaryTextField(
                            obscure: true,
                            prefixIcon: Image.asset("lib/pages/new_login/assets/password.png"),
                            hintText: "Confirm Password",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Don’t Match';
                              } else {
                                return null;
                              }
                            }),
                        SizedBox(height: 60.h),
                        PrimaryButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate())
                            {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if(passwordCont.text.isEmpty)
                              {
                                Fluttertoast.showToast(msg: "Email or mobile is empty");
                                return;
                              }

                              if(mounted)
                                {
                                  loader = true;
                                  setState(() {
                                  });
                                }

                              Map body = {
                                "username": widget.userName,
                                "otp": widget.otp,
                                "password": passwordCont.text.trim()
                              };

                              Response? response = await HttpReq.putApi(apiUrl: ApiUrls().ipAddress + ApiUrls().reset_password, body: body,);

                              if(mounted)
                                {
                                  loader = false;
                                  setState(() {
                                  });
                                }

                              if(response!=null && response.statusCode == 200 || response?.statusCode == 201)
                              {
                                var jsonResponseBody = jsonDecode(response!.body);
                                if(jsonResponseBody["type"]!=null && jsonResponseBody["type"]=='success')
                                {
                                  Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      msg: "${jsonResponseBody["message"]??"Otp sent"}");

                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                                      const PasswordSuccessView()));
                                }
                              }
                              else if(response!=null)
                              {
                                var jsonResponseBody = jsonDecode(response.body);
                                print("${jsonResponseBody["message"]}");
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}"??"Unable to login");
                                return;
                              }
                              else
                              {
                                print("Network error");
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: 'Unable to login right now');
                                return;
                              }
                            }
                          },
                          title: "CONFIRM",
                          child: loader == true? const CircularProgressIndicator(color: Colors.white,) : null,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
