
import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorTemperatureView extends StatelessWidget {
  const DoctorTemperatureView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> pages = List.generate(2, (index) => index + 1);
    ScreenUtil.init(context);
    return MyPageView(
      pagesCount: pages.length,
      pageViewHeight: 225.h,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: ScreenUtil().screenWidth,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              temperatureSwitchWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: highLowWidget(),
              ),


              Flexible(
                flex: 0,
                child: temperatureMeterWidet(),
              )
            ],
          ),
        );
      },
    );
  }

  Widget temperatureSwitchWidget() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h,),
          Flexible(
            flex: 0,
            child: Container(
              height: 136+40.h,
              width: 204+40.w,

              decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}blue_sqr.png"),
              padding: EdgeInsets.only(
                left: 20+30.w,
                right: 40.w,
                top: 40.h
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 0,
                          child: Text(
                            '13°C',
                            style: TextStyle(
                              fontSize: 27.5.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              '${CommonStrings.icon}cloud.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Temperature',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Flexible(
                    child: Text(
                      'CURRENT',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width:70.w ,),
              SvgPicture.asset(
                '${CommonStrings.icon}termometer.svg',
                width: 25.w,
                height: 25.h,
                color: const Color(0xff211F2B),
              ),
              SizedBox(
                width: 15.w,
              ),
              Builder(builder: (context) {
                final ValueNotifier<bool> notifier = ValueNotifier(true);
                return AdvancedSwitch(
                  borderRadius: BorderRadius.circular(50.r),
                  disabledOpacity: 1,
                  width: 55.w,
                  height: 25.h,
                  controller: notifier,
                  activeChild: Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Text(
                      'On',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  inactiveChild: Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Text(
                      'Off',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  activeColor: const Color(0xff4472B8),
                  inactiveColor: Colors.grey,
                  thumb: ValueListenableBuilder<bool>(
                    valueListenable: notifier,
                    builder: (_, value, __) {
                      return Container(
                        margin: EdgeInsets.all(1.5.r),
                        decoration: const BoxDecoration(
                          color: CupertinoColors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          )
        ],
      ),
    );
  }

  Widget temperatureMeterWidet() {
    return Column(
      children: [
        Container(
          height: 208+40.h,
          width: 60+40.w,
          padding: const EdgeInsets.symmetric(horizontal: 27),
          decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}termometer_bac.png"),
          alignment: Alignment.center,
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 3,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 7.r,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F7FB),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffFF8412),
                            Color(0xffB55700),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.r),
                          bottomRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '27°C',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.r),

                          child: SvgPicture.asset("${CommonStrings.icon}carbon_temperature_hot.svg",
                            height: 10.h,
                            width: 10.w,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            const  SizedBox(height: 31,)
            ],
          ),
        ),
      ],
    );
  }

  Widget highLowWidget() {
    List<int> data = List.generate(
      61,
      (index) => index,
    );
    return Column(
      children: [
        Text(
          'High',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        for (int i in data)
          Container(
            height: (data.elementAt(i) == data.first + 1) ||
                    (data.elementAt(i) == data.last - 1)
                ? .5.h
                : 2.5.h,
            width: 1.w,
            color: i % 2 == 0 ? Colors.transparent : const Color(0xff211F2B),
          ),
        Text(
          'Low',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
