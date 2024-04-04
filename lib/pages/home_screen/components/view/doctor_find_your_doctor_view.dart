
import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorFindYourDoctorView extends StatefulWidget {
  const DoctorFindYourDoctorView({super.key});

  @override
  State<DoctorFindYourDoctorView> createState() =>
      _DoctorFindYourDoctorViewState();
}

class _DoctorFindYourDoctorViewState extends State<DoctorFindYourDoctorView> {
  final List<Map> data = [
    {
      'title': 'Dr. Julie Smith',
      'image': 'girl.png',
      'rating': 10,
      'ratingCount': 4.6,
      'data': 'Dental Sergeon',
    },
    {
      'title': 'Dr. John Gibbs',
      'image': 'men_beard.png',
      'rating': 5,
      'ratingCount': 4.6,
      'data': 'Dental Sergeon',
    },
    {
      'title': 'Dr. Karen Lane',
      'image': 'girl2.png',
      'rating': 10,
      'ratingCount': 4.6,
      'data': 'Dental Sergeon',
    },
    {
      'title': 'Dr. Brian Stanley',
      'image': 'men.png',
      'rating': 5,
      'ratingCount': 4.6,
      'data': 'Dental Sergeon',
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MyPageView(
      pagesCount: data.length,
      pageViewHeight: 510.h,
      headerWidget: (context, currentPage) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.r,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Find Your Doctor',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w900,
              color: const Color(0xFF211F2B),
            ),
          ),
        ),
      ),
      itemBuilder: (context, pageindex) {
        return SizedBox(
          width: ScreenUtil().screenWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.r,
              vertical: 15.r,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                data.length,
                (index) => SizedBox(
                  height: 120.h,
                  width: ScreenUtil().screenWidth,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.r),
                    child: SizedBox.expand(
                      child: Builder(builder: (context) {
                        final offset = Offset(10.w, 10.h);
                        final blurRadius = 10.r;
                        return DecoratedBox(
                          decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}Rectangle 671.png"),
                          // decoration: custom_decoration.BoxDecoration(
                          //   color: const Color(0xffF2F7FB),
                          //   boxShadow: [
                          //     custom_decoration.BoxShadow(
                          //       color: Colors.white,
                          //       offset: -offset,
                          //       blurRadius: blurRadius,
                          //       inset: true,
                          //     ),
                          //     custom_decoration.BoxShadow(
                          //       color: Colors.blue.withOpacity(0.2),
                          //       offset: offset,
                          //       blurRadius: blurRadius,
                          //       inset: true,
                          //     ),
                          //   ],
                          //   borderRadius: const BorderRadius.only(
                          //     topRight: Radius.circular(100),
                          //     bottomRight: Radius.circular(100),
                          //   ),
                          // ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 110.w,
                                height: 110.h,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.r),
                                    color: const Color(0xffEAEAF4),
                                    image:data[index]['image'].toString().isNotEmpty? DecorationImage(
                                      image: AssetImage(
                                          '${CommonStrings.image}${data[index]['image']}'),
                                      fit: BoxFit.cover,
                                    ):null,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${data.elementAt(index)['title']}',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w800,
                                          color: const Color(0xFF211F2B),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        '${data.elementAt(index)['data']}',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w800,
                                          color: const Color(0xFFFF8412),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 0,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.star_rounded,
                                            color: const Color(0xFFFF8412),
                                            size: 10.sp,
                                          ),
                                          Center(
                                            child: Text(
                                              '${data.elementAt(index)['ratingCount']}',
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w800,
                                                color: const Color(0xFFFF8412),
                                              ),
                                            ),
                                          ),
                                        ],
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

                                  return SizedBox(
                                    height: 45.h,
                                    width: 45.h,
                                    child: DecoratedBox(
                                      decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}next_round.png")

                                    ),
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
              ),
            ),
          ),
        );
      },
    );
  }
}
