import 'dart:convert';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_text_field.dart';
import 'package:blue_sky/util/network/api_urls.dart';
import 'package:blue_sky/util/network/http_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'opt_view.dart';

class VerifyPasswordCreds extends StatefulWidget {
  String password;
  VerifyPasswordCreds({super.key, required this.password});

  @override
  State<VerifyPasswordCreds> createState() => _VerifyPasswordCredsState();
}

class _VerifyPasswordCredsState extends State<VerifyPasswordCreds> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  bool loader = false;

  bool maxDigitsReached = false;

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
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
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 40,),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(29.r,10.r, 29.r, 29.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Forgot',
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
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Please Enter your registered Phone Number or Email.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      PrimaryTextField(
                        controller: textEditingController,
                        prefixIcon: Image.asset("lib/pages/new_login/assets/user.png"),
                        hintText: "User Name ( Email / Mobile )",
                        onChanged: (value)
                        {
                          if(value.toString().length == 10 && isNumeric(textEditingController.text.trim()))
                            {
                              print('hghg ${isNumeric(textEditingController.text.trim())}');
                              maxDigitsReached = true;
                              setState(() {
                              });
                            }
                        },
                        maxLength: maxDigitsReached ? 10 : null,
                        validator: (value){
                          if(value!.length > 10 && isNumeric(value))
                            {
                              return 'Wrong phone number';
                            }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 75.h,
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate())
                          {

                            FocusManager.instance.primaryFocus?.unfocus();
                            if(textEditingController.text.isEmpty)
                            {
                              Fluttertoast.showToast(msg: "Email or mobile is empty");
                              return;
                            }

                            loader = true;
                            setState(() {
                            });

                            Map body = {
                              "username": textEditingController.text.trim().toLowerCase()
                            };

                            Response? response = await HttpReq.patchAPi(apiUrl: ApiUrls().ipAddress + ApiUrls().send_otp_for_reset_pass, body: body,);

                            loader = false;
                            setState(() {
                            });

                            if(response!=null && response.statusCode == 200 || response?.statusCode == 201)
                            {
                              var jsonResponseBody = jsonDecode(response!.body);
                              if(jsonResponseBody["type"]!=null && jsonResponseBody["type"]=='success')
                              {
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]??"Otp sent"}");

                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                                    OtpView(
                                      userName: textEditingController.text.trim()??"",
                                      password: '',
                                      isForgotPass: true,
                                    ))
                                );
                              }
                              else if(jsonResponseBody["type"] != "success")
                              {
                                print("${jsonResponseBody["message"]}");
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}"??"Unable to login");
                                return;
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
                        title: "SEND OTP",
                        child: loader == true? const CircularProgressIndicator(color: Colors.white,) : null,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}
