
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorClinicMapView extends StatelessWidget {
  const DoctorClinicMapView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Clinic Map',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 150.h,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 669.png"),
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.r),
                        bottomLeft: Radius.circular(80.r),
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(80.r),
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          "${CommonStrings.image}google_map.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30,left: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Dental Clinic',
                                style: TextStyle(
                                  fontSize: 11.5.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF211F2B),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '12/2, Mathura Road, Sector 37,\nFaridabad - Delhi',
                                style: TextStyle(
                                  fontSize: 8.sp,
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
                        child: SizedBox(
                          height: 80.h,
                          width: 150.w,
                          child: DecoratedBox(
                            decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}open_map_bac.png"),
                            child: Center(
                              child: Text(
                                'Open Map',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
