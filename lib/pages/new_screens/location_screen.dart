import 'package:blue_sky/constants/asset_string.dart';
import 'package:blue_sky/constants/colors.dart';
import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({super.key});
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
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 437,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.locationMap))),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 5,
                          top: 5,
                          child: Image.asset(
                            AssetString.locationZoomIn,
                            width: 46,
                            height: 46,
                          ),
                        ),
                        Positioned(
                            right: 5,
                            top: 45,
                            child: Image.asset(
                              AssetString.locationZoomOut,
                              width: 46,
                              height: 46,
                            )),
                        Positioned(
                            left: 0,
                            bottom: 5,
                            child: Container(
                              height: 36 + 40,
                              width: 101 + 40,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(right: 20, top: 3),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          AssetString.locationDirectionBtn))),
                              child: Text(
                                "Direction",
                                style:
                                    CustomFonts.kumbhSans12W700(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 125 + 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.locationDetailsBac))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Image.asset(
                            AssetString.locationHospital,
                            height: 75,
                            width: 75,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 55, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dental Clinic",
                                  style: CustomFonts.kumbhSans15W700(),
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
                          height: 77 + 20,
                          width: 36 + 20,
                          margin: const EdgeInsets.only(right: 40),
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(AssetString.locationDetailsBtnBac))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AssetString.locationCall,
                                height: 15,
                                width: 15,
                              ),
                              Image.asset(
                                AssetString.locationMsg,
                                height: 15,
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 4 - 5,
                          width: MediaQuery.of(context).size.width / 4 - 5,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(AssetString.locationBottomListBac))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetString.locationService,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Services",
                                style: CustomFonts.kumbhSans10W600(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 4 - 5,
                          width: MediaQuery.of(context).size.width / 4 - 5,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(AssetString.locationBottomListBac))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetString.locationReviews,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Reviews",
                                style: CustomFonts.kumbhSans10W600(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 4 - 5,
                          width: MediaQuery.of(context).size.width / 4 - 5,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(AssetString.locationBottomListBac))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetString.locationRatings,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Ratings",
                                style: CustomFonts.kumbhSans10W600(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 4 - 5,
                          width: MediaQuery.of(context).size.width / 4 - 5,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage(AssetString.locationBottomListBac))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetString.locationPhotos,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Photos",
                                style: CustomFonts.kumbhSans10W600(
                                    color: CustomColors.doctorSubTitle),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
