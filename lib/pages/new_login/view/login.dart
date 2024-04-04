import 'dart:convert';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_text_field.dart';
import 'package:blue_sky/pages/new_login/view/create_account_view.dart';
import 'package:blue_sky/pages/new_login/view/forgot_password.dart';
import 'package:blue_sky/pages/new_screens/my_screens.dart';
import 'package:blue_sky/util/network/api_urls.dart';
import 'package:blue_sky/util/network/http_methods.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import '../../screens/dash_board_view.dart';
import 'opt_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  bool loader = false;
  TextEditingController emailCont = TextEditingController();
  TextEditingController phoneCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  var textFieldColor = const Color(0xffEDEDED);
  String defaultPass = "5050";
  bool showDefaultPass = false;
  bool isObsecure = true;

  @override
  void dispose() {
    // TODO: implement dispose
    emailCont.clear();
    passCont.clear();
    phoneCont.clear();
    emailCont.dispose();
    passCont.dispose();
    phoneCont.dispose();
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
                  padding: EdgeInsets.fromLTRB(29.r, 59.r, 29.r, 29.r),
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
                                    child: Image.asset(
                                        "lib/pages/new_login/assets/weather.png")),
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
                                'Hey,',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Login Now',
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
                        height: 20.h,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign in With',
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
                      Container(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(20.r),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: Image.asset(
                                "lib/pages/new_login/assets/google.png",
                                width: 65.w,
                                height: 65.h,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(20.r),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: Image.asset(
                                "lib/pages/new_login/assets/facebook.png",
                                width: 65.w,
                                height: 65.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      PrimaryTextField(
                        controller: emailCont,
                        prefixIcon:
                            Image.asset("lib/pages/new_login/assets/user.png"),
                        hintText: "User Name ( Email )",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Wrong Email';
                          }
                          if (!EmailValidator.validate(value)) {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                          controller: phoneCont,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          prefixIcon: Image.asset(
                              "lib/pages/new_login/assets/phone.png"),
                          hintText: "User Name ( Mobile )",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Wrong Phone Number';
                            } else if (value.length < 10) {
                              return 'Wrong Phone Number';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                          controller: passCont,
                          obscure: true,
                          prefixIcon: Image.asset(
                              "lib/pages/new_login/assets/password.png"),
                          hintText: "Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Wrong Password';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (conteext) =>
                                          VerifyPasswordCreds(
                                            password: '',
                                          )));
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyScreens()));
                          if (_formKey.currentState!.validate()) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (emailCont.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Email is empty");
                              return;
                            }

                            if (phoneCont.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Phone number is empty");
                              return;
                            }

                            if (passCont.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Password is empty");
                              return;
                            }

                            if (phoneCont.text.trim().length != 10) {
                              Fluttertoast.showToast(
                                  msg: "Please enter 10 digit phone no");
                              return;
                            }
                            if (mounted) {
                              setState(() {
                                loader = true;
                                // print("loader $loader");
                              });
                            }

                            Map body = {
                              "email": emailCont.text.trim().toLowerCase(),
                              "password": passCont.text.trim(),
                              "contact": phoneCont.text.trim(),
                            };

                            Response? response = await HttpReq.putApi(
                              apiUrl: ApiUrls().ipAddress +
                                  ApiUrls().login_generateOtp,
                              body: body,
                            );
                            loader = false;

                            if (mounted) {
                              setState(() {});
                            }
                            if (response != null &&
                                    response.statusCode == 200 ||
                                response?.statusCode == 201) {
                              var jsonResponseBody = jsonDecode(response!.body);
                              if (jsonResponseBody["type"] != null &&
                                  jsonResponseBody["type"] == 'success') {
                                if (jsonResponseBody["metadata"] != null &&
                                    jsonResponseBody["metadata"]["isAdmin"] ==
                                        true) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DashbordView()));
                                  Fluttertoast.showToast(
                                      msg: "Super user logged in");
                                  return;
                                }
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg:
                                        "${jsonResponseBody["message"] ?? "Otp sent"}");

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OtpView(
                                              phoneNo: phoneCont.text.trim(),
                                              emailId: emailCont.text.trim(),
                                              password: passCont.text.trim(),
                                              isSignIn: true,
                                            )));
                              } else if (jsonResponseBody["type"] !=
                                  "success") {
                                print("${jsonResponseBody["message"]}");
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}" ??
                                        "Unable to login");
                                return;
                              }
                            } else if (response != null &&
                                response.statusCode == 429) {
                              var jsonResponseBody = jsonDecode(response.body);
                              if (jsonResponseBody["type"] != null) {
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg:
                                        "${jsonResponseBody["message"] ?? "Otp sent"}");

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OtpView(
                                              phoneNo: phoneCont.text.trim(),
                                              emailId: emailCont.text.trim(),
                                              password: passCont.text.trim(),
                                              isSignIn: true,
                                            )));
                              }
                            } else if (response != null) {
                              var jsonResponseBody = jsonDecode(response.body);
                              print("${jsonResponseBody["message"]}");
                              Fluttertoast.showToast(
                                  toastLength: Toast.LENGTH_LONG,
                                  msg: "${jsonResponseBody["message"]}" ??
                                      "Unable to login");
                              return;
                            } else {
                              print("Network error");
                              Fluttertoast.showToast(
                                  toastLength: Toast.LENGTH_LONG,
                                  msg: 'Unable to login right now');
                              return;
                            }
                          }
                        },
                        title: "SIGN IN",
                        child: loader == true
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : null,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "New User? ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.sp),
                          ),
                          InkWell(
                            onTap: () async {
                              // PopupMessageOnBack().showConfirmedAppointmentPopup(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateAccountView()));
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
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
}
