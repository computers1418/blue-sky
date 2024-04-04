import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/asset_string.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constants/colors.dart';

class RescheduleDetails extends StatelessWidget {
  RescheduleDetails({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          Expanded(
                  child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    height: 156 + 30,
                    width: 156 + 30,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetString.cancReIconBox,
                            ))),
                    child: Column(
                      children: [
                        Image.asset(
                          AssetString.rescheduleCalender,
                          width: 66,
                          height: 66,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          "26  June, 10:30 am",
                          style: CustomFonts.kumbhSans14W700(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
            
                    alignment: Alignment.topCenter, // use aligment
            
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetString.cancReMainBox,
                            ))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 44,
                        ),
                        Text(
                          "Reschedule Successful",
                          style:
                              CustomFonts.kumbhSans24W800(color: CustomColors.orange),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Image.asset(
                          AssetString.rescheduleMen,
                          width: 121,
                          height: 162,
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 52),
                          padding: const EdgeInsets.all(26),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    AssetString.cancReDetailsBox,
                                  ))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Patient",
                                    style: CustomFonts.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Neil Harris",
                                    style: CustomFonts.kumbhSans15W700(
                                        color: CustomColors.doctorSubTitle),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Doctor",
                                    style: CustomFonts.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Dr. Angelina",
                                    style: CustomFonts.kumbhSans15W700(
                                        color: CustomColors.doctorSubTitle),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Clinic Address",
                                    style: CustomFonts.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Dental Clinic",
                                    style: CustomFonts.kumbhSans15W700(
                                        color: CustomColors.doctorSubTitle),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "",
                                    style: CustomFonts.kumbhSans15W700(),
                                  )),
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "12/2, Mathura Road, Sector 37, Faridabad Delhi",
                                          style: CustomFonts.kumbhSans11W400(
                                              color: CustomColors.doctorSubTitle),
                                        ),
                                      ),
                                      Image.asset(
                                        AssetString.rescheduleArrow,
                                        height: 35,
                                        width: 35,
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 57 + 40,
                            width: 168 + 40,
                            margin: const EdgeInsets.only(right: 20, bottom: 20),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      AssetString.cancReDoneBtn,
                                    ))),
                            child: Text(
                              "Done",
                              style: CustomFonts.kumbhSans20W700(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
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
