import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/flip_animation.dart';
import '../common_utilities/common_style.dart';

class MenuAppBarTwo extends StatefulWidget{
  const MenuAppBarTwo({super.key, required this.scaffoldKey});
  final scaffoldKey;

  @override
  State<StatefulWidget> createState() {
    return MenuAppBarTwoState();
  }
}

class MenuAppBarTwoState extends State<MenuAppBarTwo> {

  int currentIcon = 0;

  callBack() async{
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      currentIcon = 1;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      currentIcon = 2;
    });
  }

  @override
  void initState() {
    super.initState();
    callBack();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F7FB),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.r, 30.r, 20.r, 8.5.r),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 0,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/menu_app_bar/back.svg",
                  color: Colors.black,
                  width: 34,
                  height: 34,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Flexible(
              child: Container(

                decoration: BoxDecoration(
                    color: const Color(0xffF2F7FB),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:const [
                      BoxShadow(
                        offset: Offset(-5, -5),
                        blurRadius: 10,
                        color: Color(0xffFFFFFF),
                      ),
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 10,
                        color: Color(0xffD3E7F6),
                      ),

                    ]
                ),
                child: Builder(
                  builder: (context) {
                    final List<Map> header = [
                      {
                        "title": "50 Cities",
                        "icon": "assets/menu_app_bar/cup.svg",
                      },
                      {
                        "title": "1 Lakh Patients",
                        "icon": "assets/menu_app_bar/flower.svg",
                      },
                      {
                        "title": "60 Clinics",
                        "icon": "assets/menu_app_bar/award.svg",
                      },
                    ];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: currentIcon >= 0 ?
                                  FlipAnimation(
                                        widget: SvgPicture.asset(
                                          header
                                              .elementAt(0)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        ),
                                  ) :
                                  SvgPicture.asset(
                                          header
                                              .elementAt(0)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        )
                                  
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Flexible(
                                  child: Text(
                                    header
                                        .elementAt(0)["title"]
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: currentIcon >= 1 ?
                                  FlipAnimation(
                                    
                                        widget: SvgPicture.asset(
                                          header
                                              .elementAt(1)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        ),
                                  ) :
                                  SvgPicture.asset(
                                          header
                                              .elementAt(1)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        ) 
                                  
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Flexible(
                                  child: Text(
                                    header
                                        .elementAt(1)["title"]
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: 
                                  currentIcon >= 2 ?
                                  FlipAnimation(
                                        widget: SvgPicture.asset(
                                          header
                                              .elementAt(2)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        ),
                                  ) : 
                                  SvgPicture.asset(
                                          header
                                              .elementAt(2)["icon"]
                                              .toString(),
                                          color: const Color(0xffFF8412),
                                          width: 14.w,
                                          height: 14.h,
                                        )
                                  
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Flexible(
                                  child: Text(
                                    header
                                        .elementAt(2)["title"]
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),);
                  },
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Flexible(
              flex: 0,
              child: InkWell(
                onTap: () => widget.scaffoldKey.currentState.openEndDrawer(),
                child: SvgPicture.asset(
                  "assets/menu_app_bar/setting.svg",
                  color: Colors.black,
                  width: 25,
                  height: 24,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
