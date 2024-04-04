import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/asset_string.dart';
import 'package:blue_sky/constants/colors.dart';
import 'package:blue_sky/constants/text_style.dart';
import 'package:hexcolor/hexcolor.dart';

class InsuranceScreen extends StatefulWidget {
  const InsuranceScreen({super.key});

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  bool contact = false;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Center(
                    child: Container(
                      height: 124 + 40,
                      width: 124 + 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AssetString.insuranceBankLogoBac))),
                      child: Image.asset(
                        AssetString.insuranceHdfcLogo,
                        height: 55,
                        width: 85,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    "HDFC Life Insurance\nCompany Ltd.",
                    style: CustomFonts.kumbhSans16W700(),
                    textAlign: TextAlign.center,
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus",
                      style: CustomFonts.kumbhSans15W400(
                          color: CustomColors.doctorSubTitle),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 22.5,
                              backgroundImage:
                                  AssetImage(AssetString.insuranceProfileOne),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                radius: 22.5,
                                backgroundImage:
                                    AssetImage(AssetString.insuranceProfileTwo),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: CircleAvatar(
                                radius: 22.5,
                                backgroundImage:
                                    AssetImage(AssetString.insuranceProfileThree),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 103, top: 32),
                              child: Text(
                                "+739",
                                style: CustomFonts.kumbhSans10W700(),
                              ),
                            )
                          ],
                        ),
                        Flexible(
                            child: Text(
                          "742 people selected this insurence",
                          style: CustomFonts.kumbhSans20W700(),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 29),
                    child: Text(
                      "Reviews",
                      style: CustomFonts.kumbhSans20W900(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(left: 49, right: 20, top: 17),
                            padding: const EdgeInsets.only(
                                left: 37, top: 13, right: 21, bottom: 19),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(AssetString.insuranceMsgLeft))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Melvin Dennis",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    Text("12 Fed, 3:46pm",
                                        style: CustomFonts.kumbhSans10W500())
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra.",
                                  style: CustomFonts.kumbhSans10W600(
                                      color: CustomColors.doctorSubTitle),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              radius: 31,
                              backgroundImage:
                                  AssetImage(AssetString.insuranceProfileFour),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(left: 20, right: 49, top: 17),
                              padding: const EdgeInsets.only(
                                  left: 21, top: 13, right: 37, bottom: 19),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage(AssetString.insuranceMsgRight))),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("12 Fed, 3:46pm",
                                          style: CustomFonts.kumbhSans10W500()),
                                      Text(
                                        "Maria",
                                        style: CustomFonts.kumbhSans16W700(),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra.",
                                    style: CustomFonts.kumbhSans10W600(
                                        color: CustomColors.doctorSubTitle),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                              right: 20,
                              child: CircleAvatar(
                                radius: 31,
                                backgroundImage:
                                    AssetImage(AssetString.insuranceProfileFive),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 29, bottom: 5),
                    child: Text(
                      "Insurence Form",
                      style: CustomFonts.kumbhSans20W900(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 47 + 20,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.insuranceTextfieldBac))),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetString.insurancePhonebook,
                          width: 20,
                          height: 20,
                        ),
                        const VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Name*",
                            hintStyle: CustomFonts.kumbhSans16W700(
                                color: CustomColors.doctorSubTitle),
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 47 + 20,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.insuranceTextfieldBac))),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetString.insuranceMsg,
                          width: 20,
                          height: 20,
                        ),
                        const VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Email*",
                            hintStyle: CustomFonts.kumbhSans16W700(
                                color: CustomColors.doctorSubTitle),
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 47 + 20,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.insuranceTextfieldBac))),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetString.insuranceCall,
                          width: 20,
                          height: 20,
                        ),
                        const VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Number*",
                            hintStyle: CustomFonts.kumbhSans16W700(
                                color: CustomColors.doctorSubTitle),
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 57 + 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetString.insuranceSubmitBtn))),
                    child: Text(
                      "Submit",
                      style: CustomFonts.kumbhSans20W900(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 17.0,
                          width: 17.0,
                          child: Checkbox(
                              checkColor: Colors.black,
                              activeColor: Colors.white,
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(
                                    width: 2.0, color: CustomColors.doctorSubTitle),
                              ),
                              value: contact,
                              onChanged: (v) {
                                setState(() {
                                  if (contact) {
                                    contact = false;
                                  } else {
                                    contact = true;
                                  }
                                });
                              }),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "I approve to contact me via email / phone to discuss insurence.",
                          style: CustomFonts.kumbhSans11W400(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
