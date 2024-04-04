

import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/app_color.dart';

import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';


class DoctorChooseProblemsView extends StatelessWidget {
  const DoctorChooseProblemsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> data = [
      {
        'icon': 'teeth_siring.svg',
        'text': 'Anesthetics',
      },
      {
        'icon': 'teeth_belt.svg',
        'text': 'Braces',
      },
      {
        'icon': 'teeth_cup.svg',
        'text': 'Bridges',
      },
      {
        'icon': 'tools_white.svg',
        'text': 'Cleaning',
      },
      {
        'icon': 'teeth_lips.svg',
        'text': 'Cosmetic Dentistry',
      },
      {
        'icon': 'teeth_cup_single.svg',
        'text': 'Crown',
      },
      {
        'icon': 'teeth_scrue.svg',
        'text': 'Dentrus',
      },
      {
        'icon': 'teeth_pluc.svg',
        'text': 'Extraction',
      },
      // {
      //   'icon': 'Vector-14.png',
      //   'text': 'Filling',
      // },
      // {
      //   'icon': 'Vector-15.png',
      //   'text': 'General Test',
      // },
      // {
      //   'icon': 'Vector-8.png',
      //   'text': 'Gum Disease',
      // },
      // {
      //   'icon': 'Vector-9.png',
      //   'text': 'Implant',
      // },
      // {
      //   'icon': 'Vector-10.png',
      //   'text': 'Root Canal',
      // },
      // {
      //   'icon': 'Vector-11.png',
      //   'text': 'Teeth Whitening',
      // },
      // {
      //   'icon': 'Vector-12.png',
      //   'text': 'Teeth Straightning',
      // },
    ];

    ScreenUtil.init(context);
    final decoration = AppColor.decoration(context);

    return MyPageView(
      pagesCount: data.length,
      footerWidget: (context, currentPage) => SizedBox(
        height: 10.h,
      ),
      pageViewHeight: ScreenUtil().setHeight(600),
      headerWidget: (context, currentPage) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.r,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Choose Problem',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      itemBuilder: (context, pageindex) {
        List<ValueNotifier<bool>> valueNotifier = List.generate(
          data.length,
          (i) => ValueNotifier(false),
        );
        return SizedBox(
          width: ScreenUtil().screenWidth,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Wrap(
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
                            for (var element in valueNotifier) {
                              if (element != valueNotifier[index]) {
                                element.value = false;
                              } else {
                                element.value = !isSelected;
                              }
                            }
                          },
                          child: SizedBox(
                            height: 148.h,
                            width: 164.w,
                            child: RepaintBoundary(
                              child: Container(
                                  decoration:  CommonWidgets.imageDecoration(
                                      isSelected?
                                           "${CommonStrings.bac}Group 1.png":"${CommonStrings.bac}Group 2.png"
                                  ),
                                  // decoration: decoration.copyWith(
                                  //   borderRadius: BorderRadius.circular(30.r),
                                  // ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: Container(

                                          child: SizedBox.expand(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5,top: 20),
                                                  child: Container(
                                                    width: 37,
                                                    height: 37,
                                                    padding:
                                                        EdgeInsets.all(8.r),

                                                    child: SvgPicture.asset(
                                                      '${CommonStrings.icon}${data[index]['icon']}',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(6.5.r),
                                                  child: SizedBox(
                                                    width: 10.w,
                                                    height: 10.h,
                                                    // decoration:
                                                    //     BoxDecoration(
                                                    //   boxShadow: !isSelected
                                                    //       ? null
                                                    //       : [
                                                    //           BoxShadow(
                                                    //               color: const Color(
                                                    //                       0xffE0965B)
                                                    //                   .withOpacity(
                                                    //                       0.61),
                                                    //               offset: Offset(
                                                    //                   0.w,
                                                    //                   0.h),
                                                    //               blurRadius:
                                                    //                   5.r,
                                                    //               spreadRadius:
                                                    //                   2.r)
                                                    //         ],
                                                    //   color: !isSelected
                                                    //       ? const Color(
                                                    //           0xff827BD3)
                                                    //       : const Color(
                                                    //           0xffFF8412),
                                                    //   shape:
                                                    //       BoxShape.circle,
                                                    // ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Flexible(
                                        flex: 0,
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 25),
                                          child: Text(
                                            data[index]['text'],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff211F2B),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
