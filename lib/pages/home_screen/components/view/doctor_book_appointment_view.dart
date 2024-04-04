
import 'package:blue_sky/pages/choose_problem/choose_problem.dart';
import 'package:blue_sky/pages/choose_test/choose_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/app_color.dart';
import '../../../common_utilities/commen_strings.dart';

import 'commen_widgets.dart';


class DoctorBookAppointmentView extends StatelessWidget {
  const DoctorBookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final decoration = AppColor.decoration(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Book Appointment',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60.h,
            child: RepaintBoundary(
              child: DecoratedBox(
                decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}text_field_bac.png"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                        child: SvgPicture.asset(
                          '${CommonStrings.icon}contacts.svg',
                          height: 16.h,
                          width: 16.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        child: SizedBox(
                          height: 47.h,
                          width: 1.w,
                          child: Container(
                            color: const Color(0xFFC5D9E9),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoTextField.borderless(
                          decoration: const BoxDecoration(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFF8412),
                          ),
                          placeholderStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF83828E),
                          ),
                          placeholder: 'Enter Name*',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60.h,
            child: RepaintBoundary(
              child: DecoratedBox(
                decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}text_field_bac.png"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                        child: SvgPicture.asset(
                          '${CommonStrings.icon}calender_strok.svg',
                          height: 16.h,
                          width: 16.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        child: SizedBox(
                          height: 47.h,
                          width: 1.w,
                          child: Container(
                            color: const Color(0xFFC5D9E9),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoTextField.borderless(
                          suffix: InkWell(
                            child: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF211F2B),
                            ),
                            onTap: () {},
                          ),
                          decoration: const BoxDecoration(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFF8412),
                          ),
                          placeholderStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF83828E),
                          ),
                          placeholder: 'Date & Time*',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60.h,
            child: RepaintBoundary(
              child: DecoratedBox(
                decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}text_field_bac.png"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                        child:
                        Image.asset('assets/doctor_view/age light.png'
                         , height: 16.h,
                          width: 16.w,)
                        // SvgPicture.asset(
                        //   'assets/homemainview/icons/age.svg',
                        //
                        //   height: 16.h,
                        //   width: 16.w,
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        child: SizedBox(
                          height: 47.h,
                          width: 1.w,
                          child: Container(
                            color: const Color(0xFFC5D9E9),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoTextField.borderless(
                          decoration: const BoxDecoration(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFF8412),
                          ),
                          placeholderStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF83828E),
                          ),
                          placeholder: 'Age*',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60.h,
            child: RepaintBoundary(
              child: DecoratedBox(
                decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}text_field_bac.png"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                        child: SvgPicture.asset(
                          '${CommonStrings.icon}teeth.svg',

                          height: 16.h,
                          width: 16.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        child: SizedBox(
                          height: 47.h,
                          width: 1.w,
                          child: Container(
                            color: const Color(0xFFC5D9E9),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CupertinoTextField.borderless(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => const ChooseProblem(),
                              ),
                            );
                          },
                          readOnly: true,
                          suffix: InkWell(
                            child: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF211F2B),
                            ),
                            onTap: () {},
                          ),
                          decoration: const BoxDecoration(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFF8412),
                          ),
                          placeholderStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF83828E),
                          ),
                          placeholder: 'Problem*',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          child: Center(
           child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 60.h,
                child: RepaintBoundary(
                  child: DecoratedBox(
                    decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}text_field_bac.png"),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.r),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 22.w,
                            child: SvgPicture.asset(
                              '${CommonStrings.icon}tools.svg',

                              height: 16.h,
                              width: 16.w,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.r),
                            child: SizedBox(
                              height: 47.h,
                              width: 1.w,
                              child: Container(
                                color: const Color(0xFFC5D9E9),
                              ),
                            ),
                          ),
                          Expanded(
                            child: CupertinoTextField.borderless(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => const ChooseTest(),
                                  ),
                                );
                              },
                              readOnly: true,
                              suffix: InkWell(
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xFF211F2B),
                                ),
                                onTap: () {},
                              ),
                              decoration: const BoxDecoration(),
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFFFF8412),
                              ),
                              placeholderStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF83828E),
                              ),
                              placeholder: 'Test & Meds*',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        
        InkWell(
          customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(80.0.r))),
          onTap: () {
            // if (_formKey.currentState!.validate()) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const HomePage()),
            //   );
            // }
          },
          child: RepaintBoundary(
            child: Container(
              height: 45+50.h,
              decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}book_apmnt_btn.png"),
              child: Center(
                child: Text(
                  'Book Appointment',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
