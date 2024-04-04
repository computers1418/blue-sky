
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorOfTheMonthView extends StatelessWidget {
  const DoctorOfTheMonthView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Doctor Of The Month',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 210+30.h,
          width: ScreenUtil().screenWidth,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 210.h,
                  child: Container(
                    decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}docter_of_month_bac.png"),
                    padding: const EdgeInsets.all(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.r),
                          bottomLeft: Radius.circular(80.r),
                          topRight: Radius.circular(30.r),
                          topLeft: Radius.circular(80.r),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "${CommonStrings.image}doctor_of_month.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: SizedBox(
                  height: 210+50,
                  child: DecoratedBox(
                      decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}doctor_of_month_details_bac.png"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3+\nYears Exp',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xff211F2B),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            '5K+\nPatients',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xff211F2B),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            '50+\nAwards',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xff211F2B),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Dr. Angelina Clayton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF211F2B),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'BDS, MDS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFF8412),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Dental Specialist',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFF8412),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 0,
              child: Container(
                height:80 .h,
                width: 140.w,
                decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}rating_bac.png"),
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Rating',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF83828E),
            ),
          ),
        ),
      ],
    );
  }
}
