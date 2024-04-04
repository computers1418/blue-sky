import 'dart:ui';

import 'package:blue_sky/widgets/back_popup_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopupMessageOnBack
{
  Future<bool> showNewPasswordPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'New Password generation will get cancelled and you will be taken back to Sign In screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    }) ?? false;
    return isPopScreen;
  }

  Future<bool> showChangePasswordPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'Changing Password process will get cancelled and you will be taken back to Sign In screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/haxa_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showSignUpPopup(BuildContext context) async{
    bool isPopScreen = await  showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'Sign up process will get cancel and you will be taken back to Sign up screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/bulb_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showSignInPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'Sign In process will get cancel and you will be taken back to Sign In screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/square_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showCautionPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra'),
            ]
        ),
        ), imagePath: 'assets/icons/caution.png',
        height: MediaQuery.of(context).size.height*0.6,);
    });
    return isPopScreen;
  }

  Future<bool> showSignUpSuccessPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'you will be taken back to Sign Up screen instead of Home screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/circle_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showSignInSuccessPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'you will be taken back to Sign In screen instead of Home screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/cloud_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showChangePassSuccessPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'By clicking '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'you will be taken back to Sign In screen instead of Home screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/square_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }

  Future<bool> showWrongEntryPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return PopupAlertDialog(
        body: RichText(text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'KumbhSans', fontSize: 13.h),
            children: const <TextSpan>[
              TextSpan(text : 'If you have entered the wrong Email or Phone number you can click on '),
              TextSpan(text : ' AGREE ',style: TextStyle(color: Color(0xffFF8412))),
              TextSpan(text : 'and the current transaction will be cancelled and you will be taken back to Sign In Screen.'),
            ]
        ),
        ), imagePath: 'assets/icons/bell_caution.png',
        height: MediaQuery.of(context).size.height*0.4,);
    });
    return isPopScreen;
  }


  Future<bool> showConfirmedAppointmentPopup(BuildContext context) async{
    bool isPopScreen = await showDialog(context: context, builder: (buildContext)
    {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Dialog(
          clipBehavior: Clip.hardEdge,
          backgroundColor: const Color(0xffF2F7FB),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: const EdgeInsets.only(top: 5),
            height: 450.h,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.close,size: 30,color: Colors.black,)),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 6),
                      child: Image.asset('assets/icons/confirmed_popup.png',height: 70, width: 70,),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child:  Text('Neil, Your appointment is confirmed \n with our doctor.', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.black,),textAlign: TextAlign.center,)
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child:  RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'KumbhSans', fontSize: 13.h),
                            children: <TextSpan>[
                              TextSpan(text : '10:30 am ',style: TextStyle(color: const Color(0xffFF8412),fontSize: 17.sp,fontWeight: FontWeight.bold)),
                              TextSpan(text : ' | ',style: TextStyle(color: const Color(0xffFF8412),fontSize: 15.sp)),
                              TextSpan(text : ' Dr.Angelina',style: TextStyle(color: const Color(0xffFF8412),fontSize: 17.sp,fontWeight: FontWeight.bold)),
                            ]
                        ),
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text('MONDAY, JUNE 16, 2022 \n 12/2, Mathura Road, Sector 37 \n Faridabad - Delhi',
                    style: TextStyle(color: const Color(0xff83828E),fontSize: 11.sp,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 8.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.68,
                      padding: const EdgeInsets.only(left: 30, right: 30, top: 15,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient:const  LinearGradient(
                          colors: [
                            Color(0xffACA4FE),
                            Color(0xff5C55AB),
                            Color(0xff2B275A),
                          ],
                          stops: [0.05,0.4,0.9],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                        )
                      ),
                      child:Center(
                        child:  Text('My Appointment',
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,fontSize: 16.sp),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      alignment: Alignment.center,
                      child:  RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'KumbhSans', fontSize: 7.sp),
                            children: const <TextSpan>[
                              TextSpan(text : 'You can ',),
                              TextSpan(text : 'Cancel',style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
                              TextSpan(text : ' or ',style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text : 'Reschedule',style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold)),
                              TextSpan(text : ' appointment by entering My Appointment, You can also see clinic map and contact doctor via Voice call or WhatsApp.',),
                            ]
                        ),
                      )
                  ),
                ]
            ),
          ),
        ),
      );
    });
    return isPopScreen;
  }
}