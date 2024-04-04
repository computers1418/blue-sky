import 'package:blue_sky/pages/home_screen/components/view/common_navigation_bar.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:blue_sky/pages/screens/payment_screen/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_utilities/commen_strings.dart';
import '../common_utilities/commen_widgets.dart';
import '../common_utilities/common_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  List<Map> data = [
    {'icon': 'Vector (3).svg', 'text': "Appointments"},
    {'icon': '39-Notification.svg', 'text': "Notification"},
    {'icon': 'Group.svg', 'text': "Payments"},
    {'icon': 'Group (1).svg', 'text': "Settings"},
    {'icon': 'Vector (4).svg', 'text': "Privacy Policy"},
    {'icon': 'Vector (5).svg', 'text': "Terms & Condition"},
    {'icon': 'Vector (6).svg', 'text': "Log Out"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F7FB),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 138 + 40,
                          width: 138 + 40,
                          decoration: CommonWidgets.imageDecoration(
                              "${CommonProfileStrings.bacProfileScreen}Frame 21.png"),
                          margin: const EdgeInsets.only(bottom: 18),
                          alignment: Alignment.center,
                          child: const SizedBox(
                            height: 125,
                            width: 125,
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                  "${CommonProfileStrings.bacProfileScreen}edit_profile.png"),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Text(
                            "Neil Harris",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 57 + 40,
                    width: 168 + 40,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: CommonWidgets.imageDecoration(
                        "${CommonProfileStrings.bacProfileScreen}Rectangle 13 (1).png"),
                    alignment: Alignment.center,
                    child: Text(
                      "Edit Profile",
                      style: CommonStyle.kumbhSans15W700(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: data.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            if(index==2){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen(),));
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                  height: 50 + 20,
                                  padding: const EdgeInsets.only(left: 40),
                                  margin: const EdgeInsets.symmetric(horizontal: 15),
                                  alignment: Alignment.center,
                                  decoration: CommonWidgets.imageDecoration(
                                      "${CommonProfileStrings.bacProfileScreen}Rectangle 910 (2).png"),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset(
                                              "${CommonProfileStrings.bacProfileScreen}${data[index]["icon"]}")),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${data[index]["text"]}",
                                          style: CommonStyle.kumbhSans18W600(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset("${CommonProfileStrings.bacProfileScreen}Group 48.png"),
                                      ),
                                      const SizedBox(width: 20,)

                                    ],
                                  )),
                            ],
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 78,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar:const CommonNavigationBar(),
    );
  }
}
