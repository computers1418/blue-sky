
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorRatingView extends StatelessWidget {
  const DoctorRatingView({super.key});

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
              'Doctor Rating',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),

        Builder(builder: (context) {
          List<Map> data = [
            {
              'title': 'Implant',
              'image': 'realself.png',
              'rating': 10,
              'ratingCount': 8,
              'data': 'Ratings On RealSelf By Our 5768 Patients.',
            },
            {
              'title': 'Fillings',
              'image': 'SeekPng.png',
              'rating': 5,
              'ratingCount': 4.4,
              'data': 'Ratings On RateMDs By Our 3677 Patients.',
            },
            {
              'title': 'Implant',
              'image': 'heart.png',
              'rating': 10,
              'ratingCount': 8.5,
              'data': 'Ratings On Healthgrades By Our 8342 Patients.',
            },
            {
              'title': 'Fillings',
              'image': 'vitals.png',
              'rating': 5,
              'ratingCount': 4,
              'data': 'Ratings On Vitals By Our 9965 Patients.',
            }
          ];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              data.length,
              (index) => RepaintBoundary(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: ScreenUtil().screenWidth / 1.30,
                            child: Padding(
                              padding: EdgeInsets.all(10.r),
                              child: SizedBox.expand(
                                child: Builder(builder: (context) {
                                  final offset = Offset(10.w, 10.h);
                                  final blurRadius = 10.r;
                                  return Container(
                                    decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}dr_rating_list_bav.png"),

                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70.w,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  '${data.elementAt(index)['ratingCount']} Out of ${data.elementAt(index)['rating']}',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w800,
                                                    color: const Color(
                                                        0xFF211F2B),
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  '${data.elementAt(index)['data']}',
                                                  style: TextStyle(
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.w800,
                                                    color: const Color(
                                                        0xFFFF8412),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Flexible(
                                          flex: 0,
                                          child: Builder(builder: (context) {
                                            final offset = Offset(5.w, 5.h);
                                            const blurRadius = 8.0;
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}rating_round_bac.png"),

                                                  // ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: SizedBox(
                                                      width: 20.w,
                                                      height: 20.h,
                                                      child: Container(

                                                        child: const SizedBox
                                                            .shrink(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(5.r),
                                                  child:
                                                      CircularPercentIndicator(
                                                    circularStrokeCap:
                                                        CircularStrokeCap
                                                            .round,
                                                    radius: 18.5.r,
                                                    lineWidth: 5.r,
                                                    percent: double.parse(((data
                                                                    .elementAt(
                                                                        index)[
                                                                'ratingCount']) /
                                                            (data.elementAt(
                                                                    index)[
                                                                'rating']))
                                                        .toString()),
                                                    startAngle: 90,
                                                    linearGradient:
                                                        const LinearGradient(
                                                      begin:
                                                          Alignment.topLeft,
                                                      end: Alignment
                                                          .bottomRight,
                                                      colors: [
                                                        Color(0xffFC8211),
                                                        Color(0xffB95901),
                                                      ],
                                                    ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}white_sqr.png"),
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          height: 80.h,
                          width: 100.h,
                          child: Padding(
                            padding: EdgeInsets.all(22.r),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    '${CommonStrings.image}${data[index]['image']}',
                                  ),
                                  fit: BoxFit.contain,
                                ),
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
          );
        }),
      ],
    );
  }
}
