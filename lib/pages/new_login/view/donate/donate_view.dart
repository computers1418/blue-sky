import 'package:blue_sky/pages/new_login/view/bottomnavigation_element_view.dart';
import 'package:blue_sky/pages/new_login/view/donate/customcardshapeview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonateView extends StatefulWidget {
  const DonateView({super.key});

  @override
  State<DonateView> createState() => _DonateViewState();
}

class _DonateViewState extends State<DonateView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final BoxDecoration decoration = BoxDecoration(
      color: const Color(0xffF2F7FB),
      borderRadius: BorderRadius.circular(30.h),
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-10.w, -10.h),
          blurRadius: 10.r,
        ),
        BoxShadow(
          color: Colors.blue.withOpacity(0.125),
          offset: Offset(10.w, 10.h),
          blurRadius: 10.r,
        ),
      ],
    );
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xffF2F7FB),
        body: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25.r, 49.r, 25.r, 0.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          "lib/pages/new_login/assets/Layer 2.png",
                          width: 24.w,
                          height: 24.w,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          "lib/pages/new_login/assets/Vector.png",
                          width: 34.w,
                          height: 34.w,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.r, 0.r, 30.r, 25.r),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 22.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 124.h,
                                width: 124.w,
                                decoration: decoration,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.r,
                                  ),
                                  child: Image.asset(
                                    'lib/pages/new_login/assets/bharti.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Text(
                                'Bharati Foundation',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF211F2B),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus''',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF83828E),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          DecoratedBox(
                            // height: 80.h,
                            decoration: decoration,
                            child: Padding(
                              padding: EdgeInsets.all(22.r),
                              child: Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: decoration.copyWith(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.r)),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(171, 164, 253, 1),
                                              Color.fromRGBO(91, 85, 171, 1),
                                              Color.fromRGBO(43, 38, 90, 1)
                                            ],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            'lib/pages/new_login/assets/Donate.png',
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '₹54,763',
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w800,
                                                color: const Color(0xFF211F2B),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              'Amount Collected.',
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w800,
                                                color: const Color(0xFF83828E),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: decoration.copyWith(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35.r)),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(171, 164, 253, 1),
                                              Color.fromRGBO(91, 85, 171, 1),
                                              Color.fromRGBO(43, 38, 90, 1)
                                            ],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.r),
                                          child: Image.asset(
                                            'lib/pages/new_login/assets/people.png',
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2764',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w800,
                                              color: const Color(0xFF211F2B),
                                            ),
                                          ),
                                          Text(
                                            'People Donated.',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w800,
                                              color: const Color(0xFF83828E),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF211F2B),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: RepaintBoundary(
                                  child: CustomShapeCard(
                                    backgroundImage:
                                        AssetImage('lib/pages/new_login/assets/Frame 12.png'),
                                    title: 'Melvin Dennis',
                                    content:
                                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus.''',
                                    time: '12 Fed, 3:46pm',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 18.w,
                              ),
                              const Expanded(
                                child: RepaintBoundary(
                                  child: CustomShapeCard(
                                    backgroundImage:
                                        AssetImage('lib/pages/new_login/assets/Frame 13.png'),
                                    title: 'Maria',
                                    content:
                                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus.''',
                                    time: '12 Fed, 3:46pm',
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Donate Form',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF211F2B),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 47.h,
                            child: DecoratedBox(
                              decoration: decoration,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.r),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 22.w,
                                      child: Image.asset(
                                        'lib/pages/new_login/assets/EnterName.png',
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.r),
                                      child: SizedBox(
                                        height: 47.h,
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
                                          color: const Color(0xFF83828E),
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 47.h,
                            child: DecoratedBox(
                              decoration: decoration,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.r),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 22.w,
                                      child: Image.asset(
                                        'lib/pages/new_login/assets/Email.png',
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.r),
                                      child: SizedBox(
                                        height: 47.h,
                                        width: 1.w,
                                        child: Container(
                                          color: const Color(0xFFC5D9E9),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: CupertinoTextField.borderless(
                                        decoration: const BoxDecoration(),
                                        placeholder: 'Enter Email*',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.normal,
                                          color: const Color(0xFF83828E),
                                        ),
                                        placeholderStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF83828E),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 47.h,
                            child: DecoratedBox(
                              decoration: decoration,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.r),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 22.w,
                                      child: Image.asset(
                                        'lib/pages/new_login/assets/Number.png',
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.r),
                                      child: SizedBox(
                                        height: 47.h,
                                        width: 1.w,
                                        child: Container(
                                          color: const Color(0xFFC5D9E9),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: CupertinoTextField.borderless(
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.normal,
                                          color: const Color(0xFF83828E),
                                        ),
                                        placeholderStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF83828E),
                                        ),
                                        decoration: const BoxDecoration(),
                                        placeholder: 'Enter Number*',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          InkWell(
                            customBorder: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0.r))),
                            onTap: () {
                              // if (_formKey.currentState!.validate()) {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const HomePage()),
                              //   );
                              // }
                            },
                            child: Container(
                              height: 50.h,
                              decoration: decoration.copyWith(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35.r)),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.0, .5, 1.0],
                                    colors: [
                                      Color.fromRGBO(171, 164, 253, 1),
                                      Color.fromRGBO(91, 85, 171, 1),
                                      Color.fromRGBO(43, 38, 90, 1)
                                    ],
                                  )),
                              child: Center(
                                child: Text(
                                  'Submit'.toString(),
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            Set<Map<String, dynamic>> navigationdata = {
              {
                'onTap': null,
                'title': 'Home',
                'child': 'lib/pages/new_login/assets/Home.png',
                'isSelected': true,
              },
              {
                'onTap': null,
                'title': 'Booking',
                'child': 'lib/pages/new_login/assets/Booking.png',
                'isSelected': false,
              },
              {
                'onTap': null,
                'title': 'Dark Mode',
                'child': 'lib/pages/new_login/assets/night.png',
                'isSelected': false,
              },
              {
                'onTap': null,
                'title': 'Call',
                'child': 'lib/pages/new_login/assets/Number.png',
                'isSelected': false,
              },
              {
                'onTap': null,
                'title': 'Whatsapp',
                'child': 'lib/pages/new_login/assets/Whatsapp.png',
                'isSelected': false,
              }
            };
            return Container(
              decoration: decoration.copyWith(
                boxShadow: [],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r)),
                color: const Color.fromRGBO(66, 61, 128, 1),
              ),
              height: 65.h,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var item in navigationdata)
                    (item['title'].contains('Dark Mode'))
                        ? Padding(
                            padding: EdgeInsets.only(
                              left: 20.r,
                              right: 20.r,
                            ),
                            child: Center(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: item['onTap'],
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Visibility(
                                      visible: item['child'] != null,
                                      child: Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            stops: [0.0, 1.0],
                                            colors: [
                                              Color.fromRGBO(91, 85, 171, 1),
                                              Color.fromRGBO(43, 38, 90, 1)
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.r),
                                          child: Image.asset(
                                            item['child'],
                                            color: item['isSelected']
                                                ? const Color(0xffE0965B)
                                                    .withOpacity(0.25)
                                                : Colors.white,
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Visibility(
                                      visible: item['title'] != null,
                                      child: Text(
                                        item['title'] ?? '',
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : GetNavigationBar(
                            child: item['child'],
                            isSelected: item['isSelected'],
                            onTap: item['onTap'],
                            title: item['title']),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
