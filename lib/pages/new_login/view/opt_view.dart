import 'dart:async';
import 'dart:convert';
import 'package:blue_sky/main.dart';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:blue_sky/pages/new_login/common_widget/primary_button.dart';
import 'package:blue_sky/pages/new_login/view/account_verified_view.dart';
import 'package:blue_sky/pages/new_login/view/reset_password.dart';
import 'package:blue_sky/pages/new_login/view/signup_success_view.dart';
import 'package:blue_sky/util/network/api_urls.dart';
import 'package:blue_sky/util/network/http_methods.dart';
import 'package:blue_sky/widgets/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpView extends StatefulWidget {
  String? phoneNo = "";
  String? emailId = "";
  String? firstName = "";
  String password ;
  bool? isForgotPass = false ;
  bool? isSignIn = false ;
  String? userName;
  bool? isSignUp = false;
  String? pseudoUserData = '';

  OtpView({super.key, this.emailId,
    this.phoneNo,
    required this.password,
    this.isForgotPass,
    this.userName,
    this.isSignUp,
    this.firstName,
  this.isSignIn,
  this.pseudoUserData});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController pinController = TextEditingController();

  late Timer _timer;

  int _start = 30;

  int clickedResend = 0;

  String? _code = '' ;

  String? pseudoUserData = '' ;

  bool isOtpCorrect = true;

  bool loader = false;


  @override
  void initState() {
    pseudoUserData = widget.pseudoUserData ?? "";
    // TODO: implement initState
    startTimer();
    readOtp();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pinController.dispose();
    super.dispose();
  }

  void readOtp() async
  {
    smsAutoFill.listenForCode;
    String appSignature = await smsAutoFill.getAppSignature;
    print("Auto-reading-otp and signature $appSignature");
    Fluttertoast.showToast(msg: "App signature $appSignature");
  }

  void startTimer()
  {
    const oneSec =  Duration(seconds: 1);
    _timer =  Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          if(mounted)
          {
            setState(() {
              timer.cancel();
            });
          }
        } else {
          if(mounted)
          {
            setState(() {
              _start--;
            });
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context)
  {
    ScreenUtil.init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: WillPopScope(
       onWillPop: ()
        {
          if(widget.isForgotPass == true)
          {
            return Future.value(PopupMessageOnBack().showChangePasswordPopup(context));
          }
          else if(widget.isSignUp == true)
          {
            return Future.value(PopupMessageOnBack().showSignUpPopup(context));
          }
          else if(widget.isSignIn == true){
            return Future.value(PopupMessageOnBack().showSignInPopup(context));
          }
          else{
            return Future.value(false);
          }
        },
        child: Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(31.r, 49.r, 31.r, 31.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            if(widget.isForgotPass == true)
                              {
                                PopupMessageOnBack().showChangePasswordPopup(context);
                              }
                            else if(widget.isSignUp == true)
                              {
                                PopupMessageOnBack().showSignUpPopup(context);
                              }
                            else if(widget.isSignIn == true){
                              PopupMessageOnBack().showSignInPopup(context);
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
                                  'OTP Sent!',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 36.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset("lib/pages/new_login/assets/wave.png"),
                        SizedBox(
                          height: 28.h,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter the OTP sent to ${widget.phoneNo==null? "" : '+91 '}${widget.phoneNo??""} ${widget.phoneNo==null? "": '&'}',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                widget.emailId?? widget.userName??"",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              InkWell(
                                onTap: ()
                                {
                                  PopupMessageOnBack().showWrongEntryPopup(context);
                                },
                                child: Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    children: const <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Didn’t you enter the correct number & Email?',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                          )),
                                      // can add more TextSpans here...
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        PinFieldAutoFill(
                          cursor: Cursor(width: 2,height: 20.h,color: Colors.white,enabled: true),
                          controller: pinController,
                          currentCode: _code,
                          enableInteractiveSelection: true,
                          decoration:  UnderlineDecoration(
                              bgColorBuilder: const FixedColorBuilder(Colors.transparent),
                              colorBuilder: FixedColorBuilder(isOtpCorrect? Colors.white : Colors.red),
                              textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              )
                          ),
                          onCodeSubmitted: (code){
                            pinController.text = code;
                            Fluttertoast.showToast(msg: '"Auto-read OTP" used from the received SMS',
                                gravity: ToastGravity.TOP, toastLength: Toast.LENGTH_LONG);

                            setState(() {
                            });
                          },
                          onCodeChanged: (code) async{
                            print('in code changed $code');
                            _code = code;
                            setState(() {
                            });
                          },
                        ),
                        // Builder(builder: (context) {
                        //   StreamController<bool> isValid =
                        //       StreamController<bool>.broadcast();
                        //   getValid(v) {
                        //     if (v!.length < 6) {
                        //       return "OTP must be filled completely.";
                        //     } else {
                        //       return null;
                        //     }
                        //   }
                        //
                        //   return StreamBuilder<bool>(
                        //       stream: isValid.stream,
                        //       builder: (context, snapshot) {
                        //         return ;
                        //         // return PinCodeTextField(
                        //         //   controller: pinController,
                        //         //   textStyle: TextStyle(
                        //         //       fontSize: 15.sp,
                        //         //       fontWeight: FontWeight.bold,
                        //         //       color: Colors.white),
                        //         //   appContext: context,
                        //         //
                        //         //   length: 6,
                        //         //   obscureText: false,
                        //         //   // obscuringCharacter: '*',
                        //         //   // obscuringWidget: FlutterLogo(
                        //         //   //   size: 24,
                        //         //   // ),
                        //         //   blinkWhenObscuring: true,
                        //         //   animationType: AnimationType.fade,
                        //         //   validator: (v) {
                        //         //     isValid.add(getValid(v) == null);
                        //         //
                        //         //     return getValid(v);
                        //         //   },
                        //         //   pinTheme: PinTheme(
                        //         //     inactiveFillColor: Colors.transparent,
                        //         //     inactiveColor: snapshot.data == true
                        //         //         ? Colors.white
                        //         //         : Colors.red,
                        //         //     activeColor: snapshot.data == true
                        //         //         ? Colors.white
                        //         //         : Colors.red,
                        //         //     selectedColor: snapshot.data == true
                        //         //         ? Colors.white
                        //         //         : Colors.red,
                        //         //     selectedFillColor: Colors.transparent,
                        //         //     activeFillColor: Colors.transparent,
                        //         //     errorBorderColor: Colors.red,
                        //         //     shape: PinCodeFieldShape.underline,
                        //         //     borderRadius: BorderRadius.circular(5),
                        //         //     fieldHeight: 40.h,
                        //         //     fieldWidth: 40.w,
                        //         //     borderWidth: 1,
                        //         //   ),
                        //         //   cursorColor: Colors.white,
                        //         //   animationDuration:
                        //         //       const Duration(milliseconds: 300),
                        //         //   enableActiveFill: true,
                        //         //   //controller: modal.otpController.otpController.value,
                        //         //   keyboardType: TextInputType.number,
                        //         //   boxShadows: const [
                        //         //     BoxShadow(
                        //         //       offset: Offset(0, 1),
                        //         //       color: Colors.black12,
                        //         //       blurRadius: 5,
                        //         //     )
                        //         //   ],
                        //         //   onCompleted: (v) {},
                        //         //   // onTap: () {
                        //         //   //   print("Pressed");
                        //         //   // },
                        //         //   onChanged: (value) {},
                        //         //   beforeTextPaste: (text) {
                        //         //     if (kDebugMode) {
                        //         //       print("Allowing to paste $text");
                        //         //     }
                        //         //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //         //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        //         //     return true;
                        //         //   },
                        //         // );
                        //       });
                        // }),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                "Didn't Receive?  ",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16.sp),
                              ),
                              InkWell(
                                onTap: _start==0 && clickedResend<2 ? () async {
                                  pinController.clear();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  Map body;
                                  Response? response;

                                  if(widget.isSignUp == true)
                                  {
                                    body = {
                                      "email": widget.emailId,
                                      "contact": widget.phoneNo,
                                      "firstName": widget.firstName,
                                      "password": widget.password
                                    };
                                    response = await HttpReq.postApi(apiUrl: ApiUrls().ipAddress + ApiUrls().registerUser, body: body,);
                                  }

                                  else if(widget.isSignIn == true)
                                  {
                                    body = {
                                      "email": widget.emailId?.toLowerCase(),
                                      "password": widget.password,
                                      "contact": widget.phoneNo,
                                    };
                                    response = await HttpReq.putApi(apiUrl: ApiUrls().ipAddress + ApiUrls().login_generateOtp, body: body,);
                                  }

                                  else if(widget.isForgotPass == true)
                                  {
                                    body = {
                                      "username": widget.userName?.toLowerCase()
                                    };
                                    response = await HttpReq.patchAPi(apiUrl: ApiUrls().ipAddress + ApiUrls().send_otp_for_reset_pass, body: body,);
                                  }

                                  if(response?.statusCode == 200 || response?.statusCode == 201)
                                  {
                                    await smsAutoFill.unregisterListener();
                                    readOtp();
                                    clickedResend ++;
                                    var jsonResponseBody = jsonDecode(response!.body);
                                    if(jsonResponseBody["type"]!=null && jsonResponseBody["type"] == "success")
                                    {
                                      if(clickedResend == 1)
                                      {
                                        _start = 30;
                                        Fluttertoast.showToast(msg: "2nd OTP already sent");
                                      }
                                      else if(clickedResend == 2)
                                      {
                                        _start= 0;
                                        Fluttertoast.showToast(msg: "3rd OTP already sent");
                                      }
                                      startTimer();
                                      pseudoUserData = jsonResponseBody["data"] ?? "";
                                      if(mounted)
                                      {
                                        setState(() {
                                        });
                                      }
                                    }
                                    else if(jsonResponseBody["type"] != "success")
                                    {
                                      Fluttertoast.showToast(
                                          toastLength: Toast.LENGTH_LONG,
                                          msg: "${jsonResponseBody["message"]}");
                                      return;
                                    }
                                  }
                                  else
                                  {
                                    var jsonResponseBody = jsonDecode(response!.body);
                                    print("${jsonResponseBody["message"]}");
                                    Fluttertoast.showToast(
                                        toastLength: Toast.LENGTH_LONG,
                                        msg: "${jsonResponseBody["message"]}"??"Unable to login");
                                    return;
                                  }
                                }
                                :
                                (){
                                    if(clickedResend >= 2) {
                                      Fluttertoast.showToast(msg: "All OTP exhausted");
                                    }
                                    return;
                                },
                                child: Text(
                                  "Send Again",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: _start==0 && clickedResend<2 ? AppColor.orange : Colors.grey,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Text(
                            "OTP Sent",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.orange,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                                children:  <TextSpan>[
                                  TextSpan(
                                      text: '00:$_start',
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                      )),
                                  // can add more TextSpans here...
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        PrimaryButton(
                          onPressed: () async
                          {
                            FocusManager.instance.primaryFocus?.unfocus();
                            Map body;
                            Response? response;

                            print('VERIFY CLICK');
                            if(pinController.text.isEmpty)
                              {
                                Fluttertoast.showToast(msg: 'Please enter the OTP');
                                return;
                              }

                            loader = true;
                            setState(() {
                            });

                            print('signup ${widget.isSignUp}, $pseudoUserData');
                            if(widget.isSignUp == true)
                              {
                                if(pseudoUserData != '')
                                  {
                                    body = {
                                      "pseudoUserId": pseudoUserData,
                                      "otp": pinController.text.toString() ?? ""
                                    };
                                    response = await HttpReq.postApi(apiUrl: ApiUrls().ipAddress + ApiUrls().validateOtpToRegister, body: body,);
                                  }
                              }
                            else if(widget.isSignIn == true || widget.isForgotPass == true)
                              {
                                body = {
                                  "username": widget.userName?? widget.phoneNo?.trim()?? widget.emailId?.trim()??"",
                                  "password": widget.password.isNotEmpty? widget.password : "5050",
                                  "otp": pinController.text.toString()??""
                                };
                                response = await HttpReq.patchAPi(apiUrl: ApiUrls().ipAddress + ApiUrls().verifyOtpAtLogin, body: body,);
                              }

                            loader = false;
                            setState(() {
                            });

                            if(response?.statusCode == 200 || response?.statusCode == 201)
                            {
                              clickedResend ++;
                              var jsonResponseBody = jsonDecode(response!.body);
                              if(jsonResponseBody["type"]!=null && jsonResponseBody["type"] == "success")
                              {
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}");
                                if(widget.isSignIn == true)
                                {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AccountVerifiedView()));
                                }
                                else if(widget.isSignUp == true)
                                  {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignupSuccessView()));
                                  }
                                else
                                  {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SetNewPassword(userName: widget.userName!, otp: pinController.text)));
                                  }
                              }
                              else if(jsonResponseBody["type"] != "success")
                              {
                                Fluttertoast.showToast(
                                    toastLength: Toast.LENGTH_LONG,
                                    msg: "${jsonResponseBody["message"]}");
                                isOtpCorrect = false;
                                setState(() {
                                });
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
                              isOtpCorrect = false;
                              setState(() {
                              });
                              return;
                            }
                          },
                          title: "VERIFY",
                          child: loader == true? const CircularProgressIndicator(color: Colors.white,) : null,
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
