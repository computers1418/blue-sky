import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/constants/asset_string.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constants/colors.dart';

class PreviousAppointment extends StatelessWidget {
  PreviousAppointment({super.key});
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
                      "Previous Appointment",
                      style: CustomFonts.kumbhSans20W900(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                                      "Gum Evaluation",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    Text(
                                      "03 July, 09:00 am",
                                      style: CustomFonts.kumbhSans10W600(
                                          color: CustomColors.doctorSubTitle),
                                    ),
                                  ],
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
