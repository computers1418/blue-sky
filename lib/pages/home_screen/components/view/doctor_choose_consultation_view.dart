
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/app_color.dart';
import '../../../common_utilities/commen_strings.dart';

import 'commen_widgets.dart';

class DoctorChooseConsultationView extends StatelessWidget {
  const DoctorChooseConsultationView({super.key});

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
              'Choose Consultation',
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Builder(builder: (context) {
            List<Map> data = [
              {
                'icon': 'call.svg',
                'text': 'Voice Call',
                'borderRadius': "normalLeft",
                'dot': "Lft",

                'padding': EdgeInsets.only(
                  right: 20.w,
                ),
              },
              {
                'icon': 'camera.svg',
                'text': 'Video Call',
                'dot': "Rgt",

                'borderRadius': "curvedRight",


                'padding': EdgeInsets.zero,
              },
              {
                'icon': 'hoom_plus.svg',
                'text': 'Visit Clinic',
                'borderRadius': "curvedLeft",
                'dot': "Lft",


                'padding': EdgeInsets.only(
                  right: 20.w,
                  top: 20.h,
                ),
              },
              {
                'icon': 'home.svg',
                'text': 'Call Home',
                'borderRadius': "normalRight",
                'dot': "Rgt",

                'padding': EdgeInsets.only(
                  top: 20.h,
                ),
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
                          onTap: () {
                            for (var element in valueNotifier) {
                              if (element != valueNotifier[index]) {
                                element.value = false;
                              } else {
                                element.value = !isSelected;
                              }
                            }
                          },
                          child: SizedBox(
                            height: 100+25.h,
                            width: 144+25.5.w,
                            child: RepaintBoundary(
                              child: Container(
                                decoration: getDecoration(data.elementAt(index)['borderRadius'],isSelected),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(2.r),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                '${CommonStrings.icon}${data[index]['icon']}',
                                                color: isSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                                width: 20.w,
                                                height: 20.h,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(data[index]['text'],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w800,
                                                    color: isSelected
                                                        ? Colors.white
                                                        : Colors.grey,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: isSelected,
                                        child: Padding(
                                          padding: EdgeInsets.all(30.r),
                                          child: Align(
                                            alignment:data.elementAt(index)['dot']=="Lft"? Alignment.topRight:Alignment.topLeft,
                                            child: Container(
                                              width: 7.5.w,
                                              height: 7.5.h,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: const Color(
                                                              0xffE0965B)
                                                          .withOpacity(0.61),
                                                      offset: Offset(0.w, 0.h),
                                                      blurRadius: 5.r,
                                                      spreadRadius: 2.r)
                                                ],
                                                color: const Color(0xffFF8412),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
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

  getDecoration(String boxType, bool isSelected) {
    if(boxType=="curvedLeft"){
      if(!isSelected){
        return CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 663.png");

      }else{
        return CommonWidgets.imageDecoration("${CommonStrings.bac}choose_consultation_round_selected.png");

      }
    }else if(boxType=="curvedRight"){
      if(!isSelected){
        return CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 660.png");

      }else{
        return CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 663 (1).png");

      }

    }
    else{
      if(!isSelected){
        return CommonWidgets.imageDecoration("${CommonStrings.bac}choose_consultation_sqr.png");

      }else{
        return CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 8 (2).png");

      }

    }
  }
}
