import 'package:blue_sky/pages/docter_view/doctor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../common_utilities/commen_strings.dart';

import '../../../../constants/app_color.dart';

import '../../../screens/booking/booking_screen.dart';
import 'commen_widgets.dart';

class DoctorQuickSelectView extends StatelessWidget {
  const DoctorQuickSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final decoration = AppColor.decoration(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 0.r),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Quick Select',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Builder(builder: (context) {
            List<Map> data = [
              {
                'icon': 'calender.svg',
                'text': 'Book\nAppointment',
              },
              {
                'icon': 'teeth_round.svg',
                'text': 'Choose\nProblem',
              },
              {
                'icon': 'location.svg',
                'text': 'Clinic\nMap',
              },
              {
                'icon': 'docter_blue.svg',
                'text': 'Find Your\nDoctor',
              },
              {
                'icon': 'peoples.svg',
                'text': 'Insurence',
              },
              {
                'icon': 'money_hand.svg',
                'text': 'Donate To\nNGO',
              },
            ];

            List<ValueNotifier<bool>> valueNotifier = List.generate(
              data.length,
              (i) => ValueNotifier(false),
            );
            return Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: List.generate(
                data.length,
                (index) {
                  return ValueListenableBuilder<bool>(
                      valueListenable: valueNotifier[index],
                      builder: (context, isSelected, _) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            if(index==0){
                              Navigator.push(context , MaterialPageRoute(builder: (context) => const BookingScreen() ,));
                            }if(index==3){
                              Navigator.push(context , MaterialPageRoute(builder: (context) => const DoctorView(),));
                            }
                            for (var element in valueNotifier) {
                              if (element != valueNotifier[index]) {
                                element.value = false;
                              } else {
                                element.value = !isSelected;
                              }
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                                height: 89.h,
                                width: 109.w,
                                decoration: CommonWidgets.imageDecoration(
                                    "${CommonStrings.bac}choose_consultation_sqr.png"),
                                child: Padding(
                                  padding: EdgeInsets.all(10.r),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: isSelected
                                          ? Border.all(
                                              color: const Color(0xff4D478B),
                                              width: 3.r,
                                            )
                                          : null,
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.r),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            '${CommonStrings.icon}${data[index]['icon']}',
                                            color:
                                                 const Color(0xff4D478B),
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(data[index]['text'],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w700,
                                                color: const Color(0xff4D478B)
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        );
                      });
                },
              ),
            );
          }),
        ),
      ],
    );
  }
}
