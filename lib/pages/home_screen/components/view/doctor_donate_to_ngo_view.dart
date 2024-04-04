
import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';


class DoctorDonateToNgoView extends StatefulWidget {
  const DoctorDonateToNgoView({super.key});

  @override
  State<DoctorDonateToNgoView> createState() => _DoctorDonateToNgoViewState();
}

class _DoctorDonateToNgoViewState extends State<DoctorDonateToNgoView> {
  int selectedIndex = 0;

  List data = [
    'Child Rights And You',
    'Smile Foundation',
    'Room To Read India Trust',
    'SEWA Rural'
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,top: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Donate To NGO',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),

        Stack(
          children: [
            
            MyPageView(
                pageViewHeight: 450.h,pagesCount: 2,
                itemBuilder: (context,index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(flex: 7,
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedIndex = 0;
                                    }),
                                                                      child: Stack(alignment: Alignment.bottomCenter,
                                      children: [
                                        Image.asset("lib/pages/home_screen/assets/card.png",
                                                                        fit: BoxFit.fill,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 28),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/card-blue.png",
                                                                            fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(top: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/${data[0]}.png",
                                                      height: 60,),
                                          ),
                                        ),
                                        Positioned(bottom: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Stack(
                                              children: [
                                                Image.asset("lib/pages/home_screen/assets/radio.png",
                                                          height: 45,),
                                                          if(selectedIndex == 0)
                                                          Image.asset("lib/pages/home_screen/assets/active-radio.png",
                                                          height: 45,),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(bottom: -10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Text("Child Rights\nAnd You",
                                            textAlign: TextAlign.center,
                                            style: CustomFonts.kumbhSans16W700(
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                            const Expanded(flex: 6,
                              child: SizedBox())
                          ],
                        ),
                        Row(
                        children: [
                          const Expanded(flex: 6,
                            child: SizedBox()),
                         Expanded(flex: 7,
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedIndex = 1;
                                    }),
                                                                      child: Stack(alignment: Alignment.bottomCenter,
                                      children: [
                                        Image.asset("lib/pages/home_screen/assets/card.png",
                                                                        fit: BoxFit.fill,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 28),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/card-blue.png",
                                                                            fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(top: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/${data[1]}.png",
                                                      height: 60,),
                                          ),
                                        ),
                                        Positioned(bottom: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Stack(
                                              children: [
                                                Image.asset("lib/pages/home_screen/assets/radio.png",
                                                          height: 45,),
                                                          if(selectedIndex == 1)
                                                          Image.asset("lib/pages/home_screen/assets/active-radio.png",
                                                          height: 45,),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(bottom: -10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Text("Smile\nFoundation",
                                            textAlign: TextAlign.center,
                                            style: CustomFonts.kumbhSans16W700(
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                            
                        ],
                      ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(flex: 7,
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedIndex = 2;
                                    }),
                                                                      child: Stack(alignment: Alignment.bottomCenter,
                                      children: [
                                        Image.asset("lib/pages/home_screen/assets/card.png",
                                                                        fit: BoxFit.fill,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 28),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/card-blue.png",
                                                                            fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(top: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/${data[2]}.png",
                                                      height: 60,),
                                          ),
                                        ),
                                        Positioned(bottom: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Stack(
                                              children: [
                                                Image.asset("lib/pages/home_screen/assets/radio.png",
                                                          height: 45,),
                                                          if(selectedIndex == 2)
                                                          Image.asset("lib/pages/home_screen/assets/active-radio.png",
                                                          height: 45,),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(bottom: -10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Text("Room To Read\nIndia Trust",
                                            textAlign: TextAlign.center,
                                            style: CustomFonts.kumbhSans16W700(
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                            
                            const Expanded(flex: 6,
                              child: SizedBox())
                          ],
                        ),
                        Row(
                        children: [
                          const Expanded(flex: 6,
                            child: SizedBox()),
                          Expanded(flex: 7,
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedIndex = 3;
                                    }),
                                                                      child: Stack(alignment: Alignment.bottomCenter,
                                      children: [
                                        Image.asset("lib/pages/home_screen/assets/card.png",
                                                                        fit: BoxFit.fill,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 28),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/card-blue.png",
                                                                            fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(top: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 28),
                                            child: Image.asset("lib/pages/home_screen/assets/${data[3]}.png",
                                                      height: 60,),
                                          ),
                                        ),
                                        Positioned(bottom: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Stack(
                                              children: [
                                                Image.asset("lib/pages/home_screen/assets/radio.png",
                                                          height: 45,),
                                                          if(selectedIndex == 3)
                                                          Image.asset("lib/pages/home_screen/assets/active-radio.png",
                                                          height: 45,),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(bottom: -10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 55),
                                            child: Text("SEWA Rural",
                                            textAlign: TextAlign.center,
                                            style: CustomFonts.kumbhSans16W700(
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                            

                        ],
                      ),
                      ],
                    ),
                    
                  ],
                );
              }
            ),
          ],
        ),
      ],
    );
  }
  String getSelectedIndex() {
    if (selectedIndex == 0) {
      return "${CommonStrings.bac}ngo1.png";
    }
    if (selectedIndex == 1) {
      return "${CommonStrings.bac}ngo2.png";
    }
    if (selectedIndex == 2) {
      return "${CommonStrings.bac}ngo3.png";
    }
    if (selectedIndex == 3) {
      return "${CommonStrings.bac}ngo4.png";
    }
    return "${CommonStrings.bac}ngo_w.png";
  }

}
