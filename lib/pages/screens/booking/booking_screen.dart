import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:blue_sky/pages/screens/payment_screen/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_color.dart';
import '../../common_utilities/commen_strings.dart';
import '../../common_utilities/common_style.dart';
import '../../home_screen/components/view/commen_widgets.dart';
import '../bottom_proceed_button.dart';
import '../profile_screen.dart';


class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  List selectedIndex = [];

  List<Map> data = [
    {
      'offerPrice': 'Rs.100 Off',
      'code': 'CONSULT100',
      'disc': 'Get Discount On Technology Fee',
    },
    {
      'offerPrice': 'Rs.100 Off',
      'code': 'HEALTHCARD100',
      'disc': 'Get Discount On Service  Fee',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: const ProfileScreen(),
        backgroundColor: const Color(0xffF2F7FB),
        body: Column(
          children: [
             MenuAppBarTwo(scaffoldKey: scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 142 + 40,
                            width: 151 + 40,
                            child: Container(
                              decoration: CommonWidgets.imageDecoration(
                                  "${CommonPaymentStrings.bacBooking}Frame 9.png"),
                              padding: const EdgeInsets.all(20),
                              child:   const DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(80),
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(80),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${CommonPaymentStrings.bacBooking}doctor_of_month.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 151 + 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr. Angelina Clayton",
                                        style: CommonStyle.kumbhSans16W700(),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("BDS, MDS",
                                          style: CommonStyle.kumbhSans13W600(
                                              color: const Color(0xffFF8412))),
                                      Text("Dental Specialist ",
                                          style: CommonStyle.kumbhSans13W600(
                                              color: const Color(0xffFF8412))),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 197 + 20,
                                  height: 62 + 40,
                                  decoration: CommonWidgets.imageDecoration(
                                      "${CommonPaymentStrings.bacBooking}Rectangle 14.png"),
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 50, right: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "4.5",
                                            style: CommonStyle.kumbhSans16W700(
                                                color: Colors.white),
                                          ),
                                          Text("Rating",
                                              style: CommonStyle.kumbhSans11W700(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "3+",
                                            style: CommonStyle.kumbhSans16W700(
                                                color: Colors.white),
                                          ),
                                          Text("Years Exp",
                                              style: CommonStyle.kumbhSans11W700(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Appointment Details",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        )),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 224 + 40,
                          width: double.infinity,
                          decoration: CommonWidgets.imageDecoration(
                              "${CommonPaymentStrings.bacBooking}Rectangle 660.png"),
                          padding:
                              const EdgeInsets.only(top: 40, left: 40, bottom: 40, right: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "16 June, 10:30 am",
                                style: CommonStyle.kumbhSans24W700(),
                              ),
                              const SizedBox(
                                height: 17,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Patient",
                                    style: CommonStyle.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Neil Harris",
                                    style: CommonStyle.kumbhSans15W700(
                                        color: const Color(0xffFF8412)),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Consultation",
                                    style: CommonStyle.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Clinic",
                                    style: CommonStyle.kumbhSans15W700(
                                        color: const Color(0xffFF8412)),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Problem",
                                    style: CommonStyle.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Gum Disease",
                                    style: CommonStyle.kumbhSans15W700(
                                        color: const Color(0xffFF8412)),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Clinic Address",
                                    style: CommonStyle.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Clinic Address",
                                    style: CommonStyle.kumbhSans15W700(
                                        color: const Color(0xffFF8412)),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "",
                                    style: CommonStyle.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "G12/2, Mathura Road, Sector 37, Faridabad - Delhi",
                                    style: CommonStyle.kumbhSans11W400(
                                        color: const Color(0xff83828E)),
                                  )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 40,
                          child: Container(
                            height: 46 + 10,
                            width: 46 + 10,
                            decoration: CommonWidgets.imageDecoration(
                                "${CommonPaymentStrings.bacBooking}Group 1.png"),
                          ),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Coupons",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: data.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Stack(
                            children: [
                              Container(
                                height: 177 + 20,
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: CommonWidgets.imageDecoration(
                                    "${CommonPaymentStrings.bacBooking}Group 2.png"),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text(
                                        "Rs.100 Off",
                                        style: CommonStyle.kumbhSans24W900(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Align(
                                            child: Container(
                                              decoration: CommonWidgets.imageDecoration(
                                                  "${CommonPaymentStrings.bacBooking}Rectangle 913.png"),
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 4),
                                              child: Text(
                                                "COUPON",
                                                style: CommonStyle.kumbhSans16W800(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 21,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 35),
                                              child: Text(
                                                "${data[index]["code"]}",
                                                style: CommonStyle.kumbhSans24W900(),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 35),
                                              child: SizedBox(
                                                width: 112,
                                                child: Text(
                                                  "${data[index]["disc"]}",
                                                  style: CommonStyle.kumbhSans13W700(
                                                      color: const Color(0xff83828E)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 35),
                                              child: SizedBox(
                                                width: 112,
                                                child: Text(
                                                  "T&C Applies*",
                                                  style: CommonStyle.kumbhSans6W700(
                                                      color: const Color(0xff83828E)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 15,
                                bottom: 5,
                                child: Container(
                                  decoration: CommonWidgets.imageDecoration(selectedIndex.contains(index)
                                      ? "${CommonPaymentStrings.bacBooking}Rectangle 908.png"
                                      : "${CommonPaymentStrings.bacBooking}Rectangle 670.png"),
                                  width: 115 + 40,
                                  height: 33 + 50,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(selectedIndex.contains(index)){
                                          selectedIndex.remove(index);
                                        }else{
                                          selectedIndex.add(index);
                                        }
                                      });
                                    },
                                    splashColor: Colors.transparent,
                                    child: SizedBox(
                                        width: 115,
                                        height: 33,
                                        child: Center(
                                            child: Text(
                                          selectedIndex.contains(index) ? "REDEEM" : "APPLIED",
                                          style: CommonStyle.kumbhSans13W700(
                                              color: Colors.white),
                                        ))),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Billing Details",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width:double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: CommonWidgets.imageDecoration(
                          "${CommonPaymentStrings.bacBooking}Rectangle 659.png"),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Consultation Fees",style: CommonStyle.kumbhSans15W700(),),
                                    Text("Rs. 1000",style: CommonStyle.kumbhSans15W700(),),
                                  ],
                                ),
                                const SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Service Fees",style: CommonStyle.kumbhSans15W700(),),
                                    Text("Rs. 100",style: CommonStyle.kumbhSans15W700(),),
                                  ],
                                ),
                                const SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Technology Fees",style: CommonStyle.kumbhSans15W700(),),
                                    Text("Rs. 100",style: CommonStyle.kumbhSans15W700LineThrough(),),
                                  ],
                                ),
                                const SizedBox(height: 3,),

                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      //TODO
                                     decoration: BoxDecoration(
                                       color:  const Color(0xffF2F7FB),
                                         borderRadius: BorderRadius.circular(30),
                                         boxShadow: const [
                                         BoxShadow(
                                           offset: Offset(-5, -5),
                                           blurRadius: 10,
                                           color: Color(0xffFFFFFF)
                                         ),
                                           BoxShadow(
                                             offset: Offset(5, 5),
                                             blurRadius: 10,
                                               color: Color(0xffD2E3F0)

                                           ),
                                       ]
                                     ),
                                      padding: const EdgeInsets.all(2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Text("CONSULT100",style: CommonStyle.kumbhSans10W800(color: const Color(0xffFF8412)),),
                                          ),
                                          SvgPicture.asset("${CommonPaymentStrings.bacBooking}Vector (1).svg",height: 13,width: 13,)

                                        ],
                                      ),
                                    )),
                                const SizedBox(height: 23,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Test",style: CommonStyle.kumbhSans15W700(),),
                                    Text("-",style: CommonStyle.kumbhSans15W700(),),
                                  ],
                                ),
                                const SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sugery",style: CommonStyle.kumbhSans15W700(),),
                                    Text("-",style: CommonStyle.kumbhSans15W700(),),
                                  ],
                                ),
                                const SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Medicine",style: CommonStyle.kumbhSans15W700(),),
                                    Text("-",style: CommonStyle.kumbhSans15W700(),),
                                  ],
                                ),


                              ],
                            ),
                          ),
                          Container(
                            height: 70+40,
                            decoration: CommonWidgets.imageDecoration("${CommonPaymentStrings.bacBooking}Rectangle 686.png"),
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",style: CommonStyle.kumbhSans20W900(),),
                                Text("Rs. 1100",style: CommonStyle.kumbhSans20W900(),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 57 + 40,
                      alignment: Alignment.center,
                      decoration: CommonWidgets.imageDecoration(
                          "${CommonPaymentStrings.bacBooking}Rectangle 668.png"),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const PaymentScreen(),));
                        },
                        child: SizedBox(
                          height: 57,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                "Proceed",
                                style: CommonStyle.kumbhSans20W900(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Other Services",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: MoreAboutDoctor(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        extendBody: true,bottomNavigationBar: CommonBottomButton(proceed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const PaymentScreen(),));
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
        'name': 'Cancellation Policy',
        'data':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Shifting Policy',
        'data':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      },
      {
        'name': 'Covid Policy',
        'data':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex.Sed dignissim.',
      }
    };

    ScreenUtil.init(context);
    final decoration = AppColor.decoration(
      context,
    );
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: moreaboutdoctor.length,
      itemBuilder: (context, i) {
        ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);
        return ValueListenableBuilder<bool>(
            valueListenable: isExpanded,
            builder: (context, expanded, _) {
              return AnimatedContainer(
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
                        decoration: CommonWidgets.imageDecoration(!expanded?
                            "${CommonPaymentStrings.bacBooking}Group 2 (1).png":"${CommonPaymentStrings.bacBooking}Group 1 (1).png"),
                        child: Padding(
                          padding: EdgeInsets.all(10.r),
                          child: SizedBox(
                            width: 27.w,
                            height: 27.h,
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