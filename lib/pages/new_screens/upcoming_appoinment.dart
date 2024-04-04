import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/asset_string.dart';
import '../../constants/colors.dart';

class UpcomingAppointment extends StatelessWidget {
  UpcomingAppointment({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.nextAppoimentBac,
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          Expanded(
                  child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 159 + 40,
                    padding: const EdgeInsets.only(left: 28, top: 20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetString.upcomingDrBac,
                            ))),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          AssetString.upcomingDrProfileBac,
                                        ))),
                                child: const CircleAvatar(
                                  radius: 34,
                                  backgroundImage:
                                      AssetImage(AssetString.upcomingDrProfile),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Dr. Angelina Clayton",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    Text(
                                      "Dental Specialist",
                                      style: CustomFonts.kumbhSans13W600(
                                          color: CustomColors.doctorSubTitle),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 30 + 40,
                                width: 39 + 40,
                                padding: const EdgeInsets.only(top: 28, left: 32),
                                margin: const EdgeInsets.only(
                                  top: 15,
                                ),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  AssetString.upcomingRatingBac,
                                ))),
                                child: Text(
                                  "4.5",
                                  style: CustomFonts.kumbhSans10W700(
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 70,
                            right: 14,
                            child: Stack(
                              children: [
                                Image.asset(
                                  AssetString.upcomingDrCallMsgBac,
                                  height: 90,
                                  width: 198 + 40,
                                ),
                                Positioned(
                                  top: 35,
                                  left: 40,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AssetString.upcomingCall,
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Call Now",
                                          style: CustomFonts.kumbhSans8W600(
                                            color: CustomColors.doctorSubTitle,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 35,
                                  left: 135,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AssetString.upcomingWhatsApp,
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text("WhatsApp\nNow",
                                          style: CustomFonts.kumbhSans8W600(
                                            color: CustomColors.doctorSubTitle,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Appointment Details",
                      style: CustomFonts.kumbhSans20W900(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 166,
                          width: 163,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    AssetString.upcomingAppoimentDetailsArch,
                                  ))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(30),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          AssetString.upcomingArchCircleBac,
                                        ))),
                                child: Image.asset(
                                  AssetString.upcomingClock,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                "09:00 am",
                                style: CustomFonts.kumbhSans16W700(
                                    color: CustomColors.doctorSubTitle),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "03 July, 2022",
                                style: CustomFonts.kumbhSans16W700(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 166,
                          width: 163,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    AssetString.upcomingAppoimentDetailsArch,
                                  ))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(30),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          AssetString.upcomingArchCircleBac,
                                        ))),
                                child: Image.asset(
                                  AssetString.upcomingHome,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                "Consult",
                                style: CustomFonts.kumbhSans16W700(
                                    color: CustomColors.doctorSubTitle),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Clinic Visit",
                                style: CustomFonts.kumbhSans16W700(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 98 + 40,
                    padding: const EdgeInsets.only(left: 51, top: 47, right: 51),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.upcomingPatientDetBac))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Patient",
                                style: CustomFonts.kumbhSans15W700(),
                              ),
                              Text(
                                "Problem",
                                style: CustomFonts.kumbhSans15W700(),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Neil Harris",
                                style: CustomFonts.kumbhSans15W700(
                                    color: CustomColors.orange),
                              ),
                              Text(
                                "Gum Disease",
                                style: CustomFonts.kumbhSans15W700(
                                    color: CustomColors.orange),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Bill Details",
                      style: CustomFonts.kumbhSans20W900(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 181 + 40,
                    padding: const EdgeInsets.only(top: 41, left: 51, right: 51),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.upcomingBillDetailsBac))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Consultation Fees",
                              style: CustomFonts.kumbhSans15W700(
                                  color: CustomColors.doctorSubTitle),
                            ),
                            const Spacer(),
                            Text(
                              "₹ 1000",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Service Fees",
                              style: CustomFonts.kumbhSans15W700(
                                  color: CustomColors.doctorSubTitle),
                            ),
                            const Spacer(),
                            Text(
                              "₹ 100",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Service Fees",
                              style: CustomFonts.kumbhSans15W700(
                                  color: CustomColors.doctorSubTitle),
                            ),
                            const Spacer(),
                            Text(
                              "₹ 100",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Technology Fees",
                              style: CustomFonts.kumbhSans15W700(
                                  color: CustomColors.doctorSubTitle),
                            ),
                            const Spacer(),
                            Text(
                              "₹ 100",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Coupon ',
                                      style: CustomFonts.kumbhSans15W700(
                                          color: CustomColors.doctorSubTitle)),
                                  TextSpan(
                                      text: '(CONSULT100)',
                                      style: CustomFonts.kumbhSans15W700(
                                          color: CustomColors.orange)),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "-₹ 100",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                        Divider(
                          color: CustomColors.lightBlue,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                            const Spacer(),
                            Text(
                              "₹ 1100",
                              style: CustomFonts.kumbhSans15W700(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 124 + 40,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.upcomingBillDetailsBac))),
                    child: Image.asset(AssetString.upcomingGoogleMap),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 51),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Clinic Address",
                                style: CustomFonts.kumbhSans15W700(),
                              ),
                              Text(
                                "Dental Clinic",
                                style: CustomFonts.kumbhSans15W700(
                                    color: CustomColors.orange),
                              ),
                              Text(
                                "12/2, Mathura Road, Sector 37, Faridabad - Delhi",
                                style: CustomFonts.kumbhSans11W400(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 30, left: 30),
                        width: 136,
                        height: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage(AssetString.upcomingOpenMapButton))),
                        child: Text(
                          "Open Map",
                          style: CustomFonts.kumbhSans13W700(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        height: 57 + 50,
                        AssetString.upcomingCancRescheButtons,
                      ),
                      Positioned(
                          left: 60,
                          top: 43,
                          child: Text(
                            "Reschedule",
                            style: CustomFonts.kumbhSans15W700(color: Colors.white),
                          )),
                      Positioned(
                          left: 262,
                          top: 43,
                          child: Text(
                            "Cancel",
                            style: CustomFonts.kumbhSans15W700(),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
