import 'dart:async';


import 'package:blue_sky/constants/customcardshapeview.dart';
import 'package:blue_sky/constants/widget_extenstion.dart';
import 'package:blue_sky/pages/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';
import '../screens/booking/booking_screen.dart';
import '../screens/bottom_proceed_button.dart';
import '../screens/menu_app_bar_two.dart';


class DoctorView extends StatefulWidget {
  const DoctorView({super.key});

  @override
  State<DoctorView> createState() => _DoctorViewState();
}

class _DoctorViewState extends State<DoctorView> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
  late PageController _pageController;
  late StreamController<int> page;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
    page = StreamController<int>.broadcast();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final decoration = AppColor.decoration(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        key: scaffoldKey,
        endDrawer:const ProfileScreen() ,
        drawerDragStartBehavior: DragStartBehavior.down,
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffF2F7FB),
        body: Column(
          children: [
             MenuAppBarTwo(scaffoldKey: scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 0),
                            child: Column(
                              children: [
                                SizedBox(height: 30.h),
                                Stack(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Flexible(
                                          child: RepaintBoundary(
                                            child: DoctorCustomShape1(
                                              backgroundImage: AssetImage(
                                                  'assets/doctor_view/customshape1.png'),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 30.h),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Dr. Angelina Clayton',
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w800,
                                                    color: const Color(0xFF211F2B),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'BDS, MDS',
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(0xFFFF8412),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Dental Specialist',
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
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 80.h,
                                        ),
                                        const Align(
                                          alignment: Alignment.bottomRight,
                                          child: RepaintBoundary(
                                            child: DoctorCustomShape2(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'About',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xFF211F2B),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF83828E),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Appointment Details',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xFF211F2B),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Kindly go through this page to see doctors profile and proceed with appointment booking',
                                        style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF83828E),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 0,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          InkWell(
                                            child: SizedBox(
                                              width: 22.w,
                                              child: Image.asset(
                                                'assets/doctor_view/edit_vector.png',
                                                color: const Color(0xFFFF8412),
                                                height: 16.h,
                                                width: 16.w,
                                              ),
                                            ),
                                            onTap: () {},
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            'Edit',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFFFF8412),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),





                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.r, 0.r, 10.r, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 60.h,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 22.w,
                                          child: Image.asset(
                                            'assets/doctor_view/EnterName.png',
                                            color: const Color(0xFF211F2B),
                                            height: 16.h,
                                            width: 16.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.r),
                                          child: SizedBox(
                                            height: 40.h,
                                            width: 1.w,
                                            child: Container(
                                              color: const Color(0xFFC5D9E9),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CupertinoTextField.borderless(
                                            decoration: const BoxDecoration(),
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.normal,
                                              color: const Color(0xFFFF8412),
                                            ),
                                            placeholderStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF83828E),
                                            ),
                                            placeholder: 'Enter Name*',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).textform(),
                                ),

                                SizedBox(
                                  height: 60.h,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 22.w,
                                          child:

                                          Image.asset(
                                            'assets/doctor_view/age light.png',
                                            color: const Color(0xFF211F2B),
                                            height: 16.h,
                                            width: 16.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.r),
                                          child: SizedBox(
                                            height: 40.h,
                                            width: 1.w,
                                            child: Container(
                                              color: const Color(0xFFC5D9E9),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CupertinoTextField.borderless(
                                            suffix: InkWell(
                                              child: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF211F2B),
                                              ),
                                              onTap: () {},
                                            ),
                                            decoration: const BoxDecoration(),
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.normal,
                                              color: const Color(0xFFFF8412),
                                            ),
                                            placeholderStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF83828E),
                                            ),
                                            placeholder: 'Enter Date*',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).textform(),
                                ),

                                SizedBox(
                                  height: 60.h,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 22.w,
                                          child: Image.asset(
                                            'assets/doctor_view/doctor_vector.png',
                                            color: const Color(0xFF211F2B),
                                            height: 16.h,
                                            width: 16.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.r),
                                          child: SizedBox(
                                            height: 40.h,
                                            width: 1.w,
                                            child: Container(
                                              color: const Color(0xFFC5D9E9),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CupertinoTextField.borderless(
                                            decoration: const BoxDecoration(),
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.normal,
                                              color: const Color(0xFFFF8412),
                                            ),
                                            placeholderStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF83828E),
                                            ),
                                            placeholder: 'Enter Doctor*',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).textform(),
                                ),

                                SizedBox(
                                  height: 60.h,
                                  child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 20.r),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 22.w,
                                            child: Image.asset(
                                              'assets/doctor_view/reason_vector.png',
                                              color: const Color(0xFF211F2B),
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.r),
                                            child: SizedBox(
                                              height: 40.h,
                                              width: 1.w,
                                              child: Container(
                                                color: const Color(0xFFC5D9E9),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: CupertinoTextField.borderless(
                                              suffix: InkWell(
                                                child: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF211F2B),
                                                ),
                                                onTap: () {},
                                              ),
                                              decoration: const BoxDecoration(),
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.normal,
                                                color: const Color(0xFFFF8412),
                                              ),
                                              placeholderStyle: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF83828E),
                                              ),
                                              placeholder: 'Enter Reason*',
                                            ),
                                          ),
                                        ],
                                      )).textform(),
                                ),

                                SizedBox(
                                  height: 60.h,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 22.w,
                                          child: Image.asset(
                                            'assets/doctor_view/treatment_vector.png',
                                            color: const Color(0xFF211F2B),
                                            height: 16.h,
                                            width: 16.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.r),
                                          child: SizedBox(
                                            height: 40.h,
                                            width: 1.w,
                                            child: Container(
                                              color: const Color(0xFFC5D9E9),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CupertinoTextField.borderless(
                                            suffix: InkWell(
                                              child: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF211F2B),
                                              ),
                                              onTap: () {},
                                            ),
                                            decoration: const BoxDecoration(),
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.normal,
                                              color: const Color(0xFFFF8412),
                                            ),
                                            placeholderStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF83828E),
                                            ),
                                            placeholder: 'Enter Treatment*',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).textform(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          InkWell(
                            customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(80.0.r))),
                            onTap: () {
                              if (_formKey.currentState!.validate()) {

                              }
                            },
                            child: UnconstrainedBox(
                              child: Container(
                                height: 70.h,
                                width: MediaQuery.of(context).size.width,
                                padding:const EdgeInsets.only(bottom: 5),
                                decoration:  const BoxDecoration(
                                    image:DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/doctor_view/button_bac.png"
                                        )
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    'Proceed',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(10.r, 0.r, 10.r, 25.r),
                            child: Column(children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Ratings',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color(0xFF211F2B),
                                  ),
                                ),
                              ),
                              const _RatingView(
                                isAlignedLeft: true,
                                title: '1',
                                ratingText: '4.4',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              const _RatingView(
                                title: '2',
                                ratingText: '4.2',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              const _RatingView(
                                isAlignedLeft: true,
                                title: '3',
                                ratingText: '4.5',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              const _RatingView(
                                title: '4',
                                ratingText: '4.4',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],),
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 25.r),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'More About Doctor',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF211F2B),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 25.r),
                      child: const MoreAboutDoctor(),
                    ),
                    StreamBuilder<int>(
                        stream: page.stream,
                        builder: (context, snapshot) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 25.r),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Reviews',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(0xFF211F2B),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 650.h,
                                child: PageView(
                                  controller: _pageController,
                                  children: const [
                                    Column(
                                      children: [
                                        _CommanShapeCard(
                                          backgroundImage:
                                              AssetImage('assets/doctor_view/people2.png'),
                                          title: 'Melvin Dennis',
                                          content:
                                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.''',
                                          time: '14 Aug, 7:34pm',
                                        ),
                                        _CommanShapeCard(
                                          backgroundImage:
                                              AssetImage('assets/doctor_view/people1.png'),
                                          title: 'Maria',
                                          content:
                                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.''',
                                          time: '07 June, 10:27am',
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        _CommanShapeCard(
                                          backgroundImage:
                                              AssetImage('assets/doctor_view/people2.png'),
                                          title: 'Melvin Dennis',
                                          content:
                                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.''',
                                          time: '14 Aug, 7:34pm',
                                        ),
                                        _CommanShapeCard(
                                          backgroundImage:
                                              AssetImage('assets/doctor_view/people1.png'),
                                          title: 'Maria',
                                          content:
                                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.''',
                                          time: '07 June, 10:27am',
                                        ),
                                      ],
                                    ),
                                  ],
                                  onPageChanged: (index) {
                                    page.sink.add(index);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  30.r,
                                  0.r,
                                  30.r,
                                  (25 + 75).r,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    RepaintBoundary(
                                      child: DecoratedBox(
                                        decoration: AppColor.decoration(
                                          context,
                                          inset: true,
                                          blurRadius: 1.r,
                                          offset: Offset(5.r, 5.r),
                                        ),
                                        child: SizedBox(
                                          child: Padding(
                                            padding: EdgeInsets.all(2.r),
                                            child: Builder(builder: (context) {
                                              List<Widget> silderlist = [
                                                DecoratedBox(
                                                  decoration:
                                                      decoration.copyWith(
                                                    color: Colors.black,
                                                  ),
                                                  child: SizedBox(
                                                    width: 10.w,
                                                    height: 10.h,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                DecoratedBox(
                                                  decoration:
                                                      decoration.copyWith(
                                                    color: Colors.white,
                                                  ),
                                                  child: SizedBox(
                                                    width: 10.w,
                                                    height: 10.h,
                                                  ),
                                                ),
                                              ];

                                              return AnimatedContainer(
                                                duration:
                                                    const Duration(seconds: 1),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children:
                                                      (snapshot.data ?? 0) == 0
                                                          ? silderlist
                                                          : silderlist.reversed
                                                              .toList(),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
        extendBody: true,
        
        bottomNavigationBar:  CommonBottomButton(proceed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const BookingScreen(),));
        }),
      ),
    );
  }
}

class MoreAboutDoctor extends StatefulWidget {
  const MoreAboutDoctor({super.key});

  @override
  State<MoreAboutDoctor> createState() => _MoreAboutDoctorState();
}

class _MoreAboutDoctorState extends State<MoreAboutDoctor> {
  @override
  Widget build(BuildContext context) {
    Set<Map<String, String>> moreaboutdoctor = {
      {
        'name': 'Education',
        'data':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Specialization',
        'data':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Experience',
        'data':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Achievements',
        'data':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Membership',
        'data':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
    };

    ScreenUtil.init(context);
    final decoration = AppColor.decoration(
      context,
    );
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: moreaboutdoctor.length,
      itemBuilder: (context, i) {
        ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);
        return ValueListenableBuilder<bool>(
            valueListenable: isExpanded,
            builder: (context, expanded, _) {
              return RepaintBoundary(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  decoration: decoration.copyWith(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150.r),
                    topRight: Radius.circular(50.r),
                    bottomLeft: Radius.circular(150.r),
                    bottomRight: Radius.circular(50.r),
                  )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12.w,
                      ),
                      InkWell(
                        onTap: () {
                          isExpanded.value = !isExpanded.value;
                        },
                        child: DecoratedBox(
                          decoration: AppColor.decoration(
                            context,
                            inset: true,
                            blurRadius: 1.r,
                            offset: Offset(5.r, 5.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: SizedBox(
                              width: 27.w,
                              height: 27.h,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F7FB),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: -Offset(10.w, 10.h),
                                      blurRadius: 10.r,
                                    ),
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.125),
                                      offset: Offset(10.w, 10.h),
                                      blurRadius: 10.r,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    !expanded
                                        ? Icons.keyboard_arrow_down_rounded
                                        : Icons.keyboard_arrow_up_rounded,
                                    color: const Color(0xFF211F2B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 25.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Text(
                                  moreaboutdoctor
                                      .elementAt(i)['name']
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w800,
                                    color: const Color(0xFF211F2B),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: expanded,
                                child: SizedBox(
                                  height: 10.h,
                                ),
                              ),
                              Visibility(
                                visible: expanded,
                                child: Flexible(
                                  child: Text(
                                    moreaboutdoctor
                                        .elementAt(i)['data']
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF83828E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 20.h,
        );
      },
    );
  }
}

class _CommanShapeCard extends StatefulWidget {
  const _CommanShapeCard(
      {this.backgroundImage,
      required this.title,
      required this.content,
      required this.time});
  final ImageProvider<Object>? backgroundImage;
  final String title;
  final String content;
  final String time;

  @override
  State<_CommanShapeCard> createState() => _CommanShapeCardState();
}

class _CommanShapeCardState extends State<_CommanShapeCard> {
  late final Image _image = Image.asset(
    'assets/doctor_view/images/rectangle_718.png',
    fit: BoxFit.fill,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_image.image, context);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    // final decoration = AppColor.decoration(
    //   context,
    // );
    return SizedBox(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 325.h,
                    width: ScreenUtil().screenWidth,
                    child: _image,
                  ),
                  SizedBox(
                    height: 225.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.h),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                widget.time,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF83828E),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13.r),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                widget.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF211F2B),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13.r),
                            child: Center(
                              child: Builder(builder: (context) {
                                double rating = 5;
                                return StatefulBuilder(
                                    builder: (context, internalstate) {
                                  return RatingBarIndicator(
                                    rating: rating,
                                    itemCount: 5,
                                    itemSize: 20.h,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        internalstate(() {
                                          rating = index + 1;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFF8412),
                                      ),
                                    ),
                                    unratedColor: const Color(0xffF2F7FB),
                                  );
                                });
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13.r),
                            child: Center(
                              child: Text(
                                widget.content,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF83828E),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.r),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.r,
                  backgroundImage: widget.backgroundImage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RatingView extends StatefulWidget {
  const _RatingView({
    required this.title,
    required this.ratingText,
    this.isAlignedLeft = false,
  });
  final String title;
  final String ratingText;
  final bool isAlignedLeft;

  @override
  State<_RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<_RatingView> {
  late final Image _circleborder = Image.asset(
    'assets/doctor_view/images/double_circle.png',
    fit: BoxFit.fill,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(_circleborder.image, context);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    List<Widget> children = [
      Expanded(
        flex: 2,
        child: Builder(builder: (context) {
          List<Widget> subchildren = [
            Flexible(
              flex: 0,
              child: Image.asset(
                'assets/doctor_view/images/${widget.title}.png',
                height: 80.r,
              ),
            ),
            Flexible(
              flex: 0,
              child: SizedBox(
                width: 20.w,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: widget.isAlignedLeft
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Dedication',
                      textAlign: widget.isAlignedLeft
                          ? TextAlign.left
                          : TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie,',
                      textAlign: widget.isAlignedLeft
                          ? TextAlign.left
                          : TextAlign.right,
                      style: TextStyle(
                        color: const Color.fromRGBO(131, 130, 142, 1),
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: widget.isAlignedLeft
                  ? subchildren
                  : subchildren.reversed.toList(),
            ),
          );
        }),
      ),
      Expanded(
        flex: 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
                'assets/doctor_view/images/double_circle.png',
              fit: BoxFit.cover,

            ),
            Center(
              child: Text(
                widget.ratingText,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color(0xffFF8412),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      )
    ];
    List<Widget> children2 = [
      const Spacer(),
      Align(
        alignment: Alignment.centerRight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/doctor_view/images/double_circle.png',
              fit: BoxFit.cover,

            ),
            Center(
              child: Text(
                widget.ratingText,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color(0xffFF8412),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    return Stack(
      alignment: Alignment.center,
      
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Builder(builder: (context) {
            List<Widget> subchildren = [
              Flexible(
                flex: 0,
                child: Image.asset(
                  'assets/doctor_view/images/${widget.title}.png',
                  height: 80.r,
                ),
              ),
              Flexible(
                flex: 0,
                child: SizedBox(
                  width: 20.w,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: widget.isAlignedLeft
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Dedication',
                        textAlign: widget.isAlignedLeft
                            ? TextAlign.left
                            : TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width:(MediaQuery.of(context).size.width/2)-100,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie,',
                        textAlign: widget.isAlignedLeft
                            ? TextAlign.left
                            : TextAlign.right,
                        style: TextStyle(
                          color: const Color.fromRGBO(131, 130, 142, 1),
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: widget.isAlignedLeft
                    ? subchildren
                    : subchildren.reversed.toList(),
              ),
            );
          }),
        ),
        SizedBox(
        width: MediaQuery.of(context).size.width,
          child: Row(
            children: widget.isAlignedLeft ? children2 : children2.reversed.toList(),
          ),
        )

      ]




      // widget.isAlignedLeft ? children : children.reversed.toList(),
    );
  }
}
