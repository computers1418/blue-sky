import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/constants/asset_string.dart';
import '../../constants/colors.dart';

class NextAppointment extends StatelessWidget {
  NextAppointment({super.key});
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
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Next Appointment",
                      style: CustomFonts.kumbhSans20W900(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 28),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetString.nextAppoimentBac,
                            ))),
                    child: Column(
                      children: [
                        Container(
                          height: 94,
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    AssetString.topTimeBac,
                                  ))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AssetString.clockStrock,
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                              Text(
                                "16 June, 10:30 am",
                                style:
                                    CustomFonts.kumbhSans24W700(color: Colors.white),
                              ),
                              Image.asset(
                                AssetString.orangeIndicater,
                                scale: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 64),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr. Angelina Clayton",
                                        style: CustomFonts.kumbhSans16W700(),
                                      ),
                                      Text(
                                        "Dental Specialist ",
                                        style: CustomFonts.kumbhSans13W600(
                                            color: CustomColors.doctorSubTitle),
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      ),
                                      Container(
                                        width: 210,
                                        height: 76,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  AssetString.clinicNameBac,
                                                ))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 11,
                                              ),
                                              Text(
                                                "Dental Clinic",
                                                style: CustomFonts.kumbhSans15W700(),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "12/2, Mathura Road, Sector 37,\n Faridabad - Delhi",
                                                style: CustomFonts.kumbhSans11W600(
                                                    color:
                                                        CustomColors.doctorSubTitle),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 260,
                                  margin: const EdgeInsets.only(left: 30),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  AssetString.cancelBac,
                                                ))),
                                      ),
                                      Positioned(
                                        left: 110,
                                        child: Container(
                                          height: 90,
                                          width: 150,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                    AssetString.rescheduleBac,
                                                  ))),
                                        ),
                                      ),
                                      Positioned(
                                          top: 38,
                                          left: 53,
                                          child: Text(
                                            "Cancel",
                                            style: CustomFonts.kumbhSans12W700(),
                                          )),
                                      Positioned(
                                          top: 38,
                                          left: 153,
                                          child: Text("Reschedule",
                                              style: CustomFonts.kumbhSans12W700(
                                                  color: Colors.white))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            AssetString.doctorBac,
                                          ))),
                                  child: Image.asset(
                                    AssetString.docProfileImage,
                                    height: 52,
                                    width: 52,
                                  ),
                                ),
                                Image.asset(
                                  AssetString.locationIcon,
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  AssetString.whatsappIcon,
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  AssetString.callIcon,
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Upcoming Appointment",
                      style: CustomFonts.kumbhSans20W900(),
                    ),
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return Container(
                          height: 199,
                          width: 368,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    AssetString.listviewBac,
                                  ))),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 50,
                                left: 57,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Angelina Clayton",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    Text(
                                      "Dental Specialist ",
                                      style: CustomFonts.kumbhSans13W600(
                                          color: CustomColors.doctorSubTitle),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 99,
                                left: 80,
                                child: Text(
                                  "03 July, 2022",
                                  style: CustomFonts.kumbhSans10W600(
                                      color: CustomColors.doctorSubTitle),
                                ),
                              ),
                              Positioned(
                                top: 99,
                                left: 175,
                                child: Text(
                                  "09:00 am",
                                  style: CustomFonts.kumbhSans10W600(
                                      color: CustomColors.doctorSubTitle),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 80,
                                child: Text(
                                  "Cancel",
                                  style: CustomFonts.kumbhSans10W700(),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 157,
                                child: Text(
                                  "Reschedule",
                                  style: CustomFonts.kumbhSans10W700(
                                      color: Colors.white),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 262,
                                child: Text(
                                  "Faridabad",
                                  style: CustomFonts.kumbhSans10W600(
                                      color: CustomColors.doctorSubTitle),
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 252,
                                child: Image.asset(
                                  AssetString.docProfileImage,
                                  width: 48,
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 318,
                                child: Image.asset(
                                  AssetString.whatsappVector,
                                  width: 10,
                                ),
                              ),
                              Positioned(
                                top: 98,
                                left: 318,
                                child: Image.asset(
                                  AssetString.callVector,
                                  width: 10,
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 318,
                                child: Image.asset(
                                  AssetString.locationVector,
                                  width: 10,
                                ),
                              ),
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
