import 'dart:developer';
import 'package:blue_sky/constants/hex_color_extention.dart';
import 'package:blue_sky/pages/docter_view/doctor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_utilities/commen_strings.dart';
import 'bottomnavigation_element_view.dart';

class CommonNavigationBar extends StatelessWidget {
  const CommonNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final Set<Map<String, dynamic>> navigationdata = {
      {
        'title': 'Location',
        'doctor_name': 'Dr. Julie',
        'doctor_city': Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'DELHI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 7.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              width: 5.w,
              height: 5.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xffE0965B).withOpacity(0.61),
                      offset: Offset(0.w, 0.h),
                      blurRadius: 5.r,
                      spreadRadius: 2.r)
                ],
                color: const Color(0xffFF8412),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
        'child': '${CommonStrings.icon}location.png',
      },
      {
        'title': 'Booking',
        'child': '${CommonStrings.icon}Booking.png',
      },
      {
        'title': 'Dark Mode',
        'child': '${CommonStrings.icon}night.png',
      },
      {
        'title': 'Whatsapp',
        'child': '${CommonStrings.icon}Whatsapp.png',
      },
      {
        'title': 'Call',
        'child': '${CommonStrings.icon}Number.png',
      },
    };

    List<ValueNotifier<bool>> notifier =
        List.generate(navigationdata.length, (index) => ValueNotifier(false));
    return Container(
      decoration: BoxDecoration(
        color: '#423D80'.toColor().withOpacity(0.5),
      ),
      height: 75.h,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < navigationdata.length; i++)
            ValueListenableBuilder<bool>(
                valueListenable: notifier.elementAt(i),
                builder: (context, isSelected, _) {
                  final Map<String, dynamic> item = navigationdata.elementAt(i);
                  return GetNavigationBar(
                    // isDisabledTitle: true,
                    child: item['child'],

                    isSelected: isSelected,
                    title: item['title'],
                    doctorname: item['doctor_name'],
                    doctorcity: item['doctor_city'],
                    onTap: () {
                      log('$i|isSelected|$isSelected|');
                      if(item['title']=="Dark Mode"){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const DoctorView()));
                      }if(item['title']=="Whatsapp"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorView(),));
                      }
                      for (var element in notifier) {
                        if (element != notifier.elementAt(i)) {
                          element.value = false;
                        } else {
                          element.value = true;
                        }
                      }
                    },
                  );
                }),
        ],
      ),
    );
  }
}
