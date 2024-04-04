import 'dart:convert';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_text_field.dart';
import 'package:blue_sky/pages/new_login/view/opt_view.dart';
import 'package:blue_sky/util/network/api_urls.dart';
import 'package:blue_sky/util/network/http_methods.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final _formKey = GlobalKey<FormState>();
  final controller = TextEditingController();

  TextEditingController nameCont = TextEditingController();

  TextEditingController phoneCont = TextEditingController();

  TextEditingController emailCont = TextEditingController();

  TextEditingController cityCont = TextEditingController();

  TextEditingController stateCont = TextEditingController();

  TextEditingController passCont = TextEditingController();

  TextEditingController confirmPassCont = TextEditingController();

  bool loader = false;

  @override
  void dispose() {
    // TODO: implement dispose
    nameCont.dispose();
    phoneCont.dispose();
    emailCont.dispose();
    cityCont.dispose();
    stateCont.dispose();
    passCont.dispose();
    confirmPassCont.dispose();
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
                  padding: EdgeInsets.fromLTRB(25.r, 49.r, 31.r, 31.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.pop(context);
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
                                'New Here?',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Create Account',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 25.sp,
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
                          'Sign up With',
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
                              onTap: () {},
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
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
                              onTap: () {},
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
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
                          prefixIcon: Image.asset(
                              "lib/pages/new_login/assets/user.png"),
                          hintText: "User Name",
                          controller: nameCont,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name Already Exist';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                          controller: emailCont,
                          prefixIcon: const Icon(
                            Icons.mail_rounded,
                            color: Colors.white,
                          ),
                          hintText: "Email",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Wrong Email';
                            } else if (!EmailValidator.validate(value)) {
                              return 'Wrong Email';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                          controller: phoneCont,
                          keyboardType: TextInputType.number,
                          prefixIcon: Image.asset(
                              "lib/pages/new_login/assets/phone.png"),
                          hintText: "Number",
                          maxLength: 10,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 10) {
                              return 'Wrong Phone Number';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                        controller: cityCont,
                        prefixIcon: const Icon(
                          Icons.location_city,
                          color: Colors.white,
                        ),
                        hintText: "City",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                        controller: stateCont,
                        prefixIcon: const Icon(
                          Icons.add_location_alt,
                          color: Colors.white,
                        ),
                        hintText: "State",
                      ),
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
                              return 'Password must be 8 Characters with UPPER case, lower case, numeric and special characters @#\$%&';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 15.h,
                      ),
                      PrimaryTextField(
                          controller: confirmPassCont,
                          obscure: true,
                          prefixIcon: Image.asset(
                              "lib/pages/new_login/assets/password.png"),
                          hintText: "Re-Enter Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Don’t Match';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 50.h,
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            if (nameCont.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Email is empty");
                              return;
                            }
                            if (phoneCont.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Phone number is empty");
                              return;
                            }
                            if (emailCont.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Email is empty");
                              return;
                            }

                            if (passCont.text.isEmpty) {
                              Fluttertoast.showToast(msg: "Password is empty");
                              return;
                            }
                            if (confirmPassCont.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Confirm password is empty");
                              return;
                            }

                            if (phoneCont.text.trim().length != 10) {
                              Fluttertoast.showToast(
                                  msg: "Please enter 10 digit phone no");
                              return;
                            }
                            if (passCont.text.trim() !=
                                confirmPassCont.text.trim()) {
                              Fluttertoast.showToast(
                                  msg: "Passwords do not match");
                              return;
                            }

                            if (mounted) {
                              setState(() {
                                loader = true;
                                print("loader $loader");
                              });
                            }

                            Map body = {
                              "email": emailCont.text.trim().toLowerCase(),
                              "contact": phoneCont.text.trim(),
                              "firstName": nameCont.text.trim(),
                              "password": passCont.text.trim()
                            };

                            Response? response = await HttpReq.postApi(
                              apiUrl:
                                  ApiUrls().ipAddress + ApiUrls().registerUser,
                              body: body,
                            );
                            loader = false;
                            if (mounted) {
                              setState(() {});
                            }
                            if (response?.statusCode == 200 ||
                                response?.statusCode == 201) {
                              var jsonResponseBody = jsonDecode(response!.body);
                              if (jsonResponseBody["type"] != null &&
                                  jsonResponseBody["type"] == 'success') {
                                String token = jsonResponseBody["data"];
                                print("Token $token");
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}");
                                FocusManager.instance.primaryFocus?.unfocus();
                                String pseudoUserData =
                                    jsonResponseBody["data"] ?? "";
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OtpView(
                                              password: passCont.text,
                                              emailId:
                                                  emailCont.text.toLowerCase(),
                                              phoneNo: phoneCont.text,
                                              firstName: nameCont.text,
                                              isSignUp: true,
                                              pseudoUserData: pseudoUserData,
                                            )));
                              } else {
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: jsonResponseBody["message"] ??
                                        "Unable to register");
                                return;
                              }
                            } else {
                              var jsonResponseBody = jsonDecode(response!.body);
                              print("${jsonResponseBody["message"]}");
                              Fluttertoast.showToast(
                                  toastLength: Toast.LENGTH_LONG,
                                  msg: "${jsonResponseBody["message"]}" ??
                                      "Unable to login");
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
                      Center(
                        child: Wrap(
                          children: [
                            Text(
                              "Already have account? ",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context, [
                                  {'typedNo': false, 'newPass': ""}
                                ]);
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
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
