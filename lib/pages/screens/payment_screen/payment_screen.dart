import 'dart:ui';

import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/screens/dash_board_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../common_utilities/commen_strings.dart';
import '../../common_utilities/common_style.dart';
import '../../home_screen/components/view/commen_widgets.dart';
import '../bottom_proceed_button.dart';
import '../menu_app_bar_two.dart';
import '../profile_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  int selectedIndex = -1;
  List<Map> data = [
    {
      'icon': 'banknote (1).png',
      'text': 'Cash',
      'disc': 'Pay At Clinic',
    },
    {
      'icon': 'layer1 (1).png',
      'text': 'UPI',
      'disc': 'GooglePay, PhonePe,.',
    },
    {
      'icon': 'bank-building (1).png',
      'text': 'Net Banking',
      'disc': 'All Indian Banks',
    },
    {
      'icon': 'wallet-filled-money-tool.png',
      'text': 'Wallet',
      'disc': 'Freecharge, Paytm..',
    },
    {
      'icon': 'credit-card.png',
      'text': 'Card',
      'disc': 'Visa, Master..',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: const Color(0xffF2F7FB),
        key: scaffoldKey,
        endDrawer:const ProfileScreen() ,
        body: Column(
          children: [
             MenuAppBarTwo(scaffoldKey: scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 216 + 40,
                      width: double.infinity,
                      decoration: CommonWidgets.imageDecoration(
                          "${CommonPaymentStrings.bac}Group 41.png"),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 45, left: 45, right: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "${CommonPaymentStrings.icon}Vector (1).png",
                                  height: 41.49,
                                  width: 69.51,
                                ),
                                Image.asset(
                                  "${CommonPaymentStrings.icon}Vector (2).png",
                                  height: 41,
                                  width: 58,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "1234",
                                  style: CommonStyle.kumbhSans24W400(
                                      color: Colors.white),
                                ),
                                Text(
                                  "5678",
                                  style: CommonStyle.kumbhSans24W400(
                                      color: Colors.white),
                                ),
                                Text(
                                  "9012",
                                  style: CommonStyle.kumbhSans24W400(
                                      color: Colors.white),
                                ),
                                Text(
                                  "3456",
                                  style: CommonStyle.kumbhSans24W400(
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nicholous Lodge",
                                  style: CommonStyle.kumbhSans24W400(
                                      color: Colors.white),
                                ),
                                Text(
                                  "07/24",
                                  style: CommonStyle.kumbhSans20W400(
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Payment Methods",
                            style: CommonStyle.kumbhSans20W900(),
                          ),
                        )),
                    ListView.builder(
                      padding: const EdgeInsets.only(bottom: 10),
                        shrinkWrap: true,
                        itemCount: data.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              if(index == 0){
                                setState(() {
                                  selectedIndex = index;
                                });
                              }
                            },
                            child: Stack(alignment: Alignment.topCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Container(
                                    height: 65 + 20,
                                    padding: const EdgeInsets.only(left: 35),
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 15),
                                    decoration: CommonWidgets.imageDecoration(
                                        '${CommonPaymentStrings.bac}Group 15.png'),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: Image.asset(
                                              "${CommonPaymentStrings.icon}${data[index]["icon"]}"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25, left: 30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                data[index]["text"],
                                                style: CommonStyle.kumbhSans15W700(),
                                              ),
                                              Text(
                                                data[index]["disc"],
                                                style: CommonStyle.kumbhSans12W600(
                                                    color: const Color(0xff83828E)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 42,
                                          width: 42,
                                          child: Image.asset(selectedIndex != index
                                              ? "${CommonPaymentStrings.bac}Ellipse 78.png"
                                              : "${CommonPaymentStrings.bac}Group 40.png"),
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                if(index > 0)
                                Positioned(bottom: 0,
                                left: 32,
                                  child: RichText(text: TextSpan(
                                    style: CustomFonts.kumbhSans10W600(),
                                    children: [
                                      TextSpan(
                                        text: "Choose "
                                      ),
                                      TextSpan(
                                        text: "Cash - Pay at Clinic",
                                        style: CustomFonts.kumbhSans10W600(
                                          color: HexColor("#FF8412")
                                        ),
                                      ),
                                      TextSpan(
                                        text: ", Choose "
                                      )
                                    ]
                                  )),
                                )
                              ],
                            ),
                          );
                        }),
                    Container(
                      height: 57 + 40,
                      alignment: Alignment.center,
                      decoration: CommonWidgets.imageDecoration(
                          "${CommonPaymentStrings.bac}Rectangle 668.png"),
                      child: InkWell(
                        onTap: () {
                          showCustomDialog();
                        },
                        child: SizedBox(
                          height: 57,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                "Confirm",
                                style: CommonStyle.kumbhSans20W900(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
        bottomNavigationBar: CommonBottomButton(proceed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) =>const PaymentScreen(),));
          showCustomDialog();
        }),
      ),
    );
  }

  void showCustomDialog() {
    showDialog(
        context: context,
        barrierColor: Colors.white.withOpacity(0.5),
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Dialog(
              backgroundColor: const Color(0xffF2F7FB),

              insetPadding: const EdgeInsets.symmetric(horizontal: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)), //this right here
              child: SizedBox(
                height: 490,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 26, top: 24),
                          child: InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) =>  const DashbordView(),), (route) => false);

                              },
                              child: SvgPicture.asset(
                                "${CommonPaymentStrings.icon}Vector.svg",
                                width: 20,
                                height: 20,
                              )),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    SvgPicture.asset(
                      "${CommonPaymentStrings.icon}_Group_.svg",
                      width: 75,
                      height: 64,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                              "Neil, Your appointment is confirmed\nwith our doctor.",
                              style: CommonStyle.kumbhSans16W700(),
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: 16,
                          ),
                          Text("10:30 am  |  Dr. Angelina",
                              style: CommonStyle.kumbhSans24W700(
                                  color: const Color(0xffFF8412)),
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                              "MONDAY, JUNE 16, 2022\n12/2, Mathura Road, Sector 37\nFaridabad - Delhi",
                              style: CommonStyle.kumbhSans13W400(
                                  color: const Color(0xff83828E)),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            height: 57 + 40,
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration(
                                "${CommonPaymentStrings.bac}Rectangle 668.png"),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 57,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      "My Appointment",
                                      style: CommonStyle.kumbhSans20W900(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -10,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: SizedBox(
                                width: 270,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'You can ',
                                        style: CommonStyle.kumbhSans8W400(),
                                      ),
                                      TextSpan(
                                        text: 'Cancel',
                                        style: CommonStyle.kumbhSans8W600(),
                                      ),
                                      TextSpan(
                                        text: ' or ',
                                        style: CommonStyle.kumbhSans8W400(),
                                      ),
                                      TextSpan(
                                        text: 'Reschedule',
                                        style: CommonStyle.kumbhSans8W600(),
                                      ),
                                      TextSpan(
                                        text:
                                            ' appointment by entering My Appointment, You can also see clinic map and contact doctor via Voice call or WhatsApp.',
                                        style: CommonStyle.kumbhSans8W400(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
