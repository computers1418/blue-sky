import 'package:blue_sky/pages/screens/menu_app_bar.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/text_style.dart';

class NGO extends StatefulWidget {
  const NGO({ Key? key }) : super(key: key);

  @override
  State<NGO> createState() => _NGOState();
}

class _NGOState extends State<NGO> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey,),
          Expanded(
                      child: SingleChildScrollView(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(alignment: Alignment.center,
                        children: [
                          Image.asset("lib/pages/ngo/assets/title-card.png",
                          height: 180,),
                          Image.asset("lib/pages/ngo/assets/icon.png",
                          height: 60,),
                        ],
                      ),
                      Text("Room To Read\nIndia Trust",
                      style: CustomFonts.kumbhSans16W700(),)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus",
                        style: CustomFonts.kumbhSans15W400(
                          color: HexColor("#83828E")
                        ),),
                  ),
                  Stack(alignment: Alignment.center,
                    children: [
                      Image.asset("lib/pages/ngo/assets/card.png",
                                height: 160,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                              children: [
                                Expanded(
                                      child: Stack(alignment: Alignment.center,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Stack(alignment: Alignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("₹54,763",
                                                    style: CustomFonts.kumbhSans16W700(),),
                                                    Text("Amount Collected.",
                                                    style: CustomFonts.kumbhSans11W600(
                                                      color: HexColor("#83828E")
                                                    ),),
                                                  ],
                                                ),
                                              ),
                                              Positioned(left: 0,
                                                                                child: Stack(alignment: Alignment.center,
                                                  children: [
                                                    Image.asset("lib/pages/ngo/assets/round-bg.png",
                                                      height: 80,),
                                                    Image.asset("lib/pages/ngo/assets/amt.png",
                                                    height: 20,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                      child: Stack(alignment: Alignment.center,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Stack(alignment: Alignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("2345",
                                                    style: CustomFonts.kumbhSans16W700(),),
                                                    Text("People Donated.",
                                                    style: CustomFonts.kumbhSans11W600(
                                                      color: HexColor("#83828E")
                                                    ),),
                                                  ],
                                                ),
                                              ),
                                              Positioned(left: 0,
                                                                                child: Stack(alignment: Alignment.center,
                                                  children: [
                                                    Image.asset("lib/pages/ngo/assets/round-bg.png",
                                                      height: 80,),
                                                    Image.asset("lib/pages/ngo/assets/amt.png",
                                                    height: 20,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                    
                              ],
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                            "Reviews",
                            style: CustomFonts.kumbhSans20W800(),
                          ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Align(alignment: Alignment.topRight,
                            child: Stack(alignment: Alignment.topCenter,
                              children: [
                                Image.asset("lib/pages/ngo/assets/review-card.png"),
                                Column(
                                  children: [
                                    const SizedBox(height: 24,),
                                    Image.asset("lib/pages/ngo/assets/img1.png",
                                    height: 58, width: 58,),
                                     Text(
                                      "Melvin Dennis",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                    height: MediaQuery.of(context).size.width * 0.35,
                                      child: SingleChildScrollView(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra.",
                                          style: CustomFonts.kumbhSans10W300(
                                            color: HexColor("#83828E")
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16,),
                                   SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                      child: Align(alignment: Alignment.centerRight,
                                                                        child: Text(
                                          "12 Fed, 3:46pm",
                                          style: CustomFonts.kumbhSans8W600(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))),
                          const Expanded(flex: 5,
                            child: SizedBox()),
                        ],
                      ),
                      Row(
                    children: [
                      const Expanded(flex: 5,
                            child: SizedBox()),
                      Expanded(flex: 6,
                        child: Align(alignment: Alignment.topLeft,
                      child: Stack(alignment: Alignment.topCenter,
                        children: [
                          Image.asset("lib/pages/ngo/assets/review-card.png"),
                          Column(
                                  children: [
                                    const SizedBox(height: 24,),
                                    Image.asset("lib/pages/ngo/assets/img2.png",
                                    height: 58, width: 58,),
                                     Text(
                                      "Maria",
                                      style: CustomFonts.kumbhSans16W700(),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                    height: MediaQuery.of(context).size.width * 0.35,
                                      child: SingleChildScrollView(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra.",
                                          style: CustomFonts.kumbhSans10W300(
                                            color: HexColor("#83828E")
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16,),
                                   SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                      child: Align(alignment: Alignment.centerRight,
                                                                        child: Text(
                                          "12 Fed, 3:46pm",
                                          style: CustomFonts.kumbhSans8W600(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              
                        ],
                      ))),
                    ],
                  )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                            "Donate Form",
                            style: CustomFonts.kumbhSans20W800(),
                          ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 20
                    ),
                    child: Stack(alignment: Alignment.centerLeft,
                      children: [
                        Image.asset("lib/pages/ngo/assets/text-bg.png",
                        fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Image.asset("lib/pages/ngo/assets/name.png",
                              width: 16,
                              fit: BoxFit.fill),
                              const SizedBox(width: 24,),
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Name",
                                  hintStyle: CustomFonts.kumbhSans16W700(
                                    color: HexColor("#83828E")
                                  ),
                                  border: InputBorder.none
                                ),
                              ))
                            ],
                          ),
                        ),
                        Positioned(left: 52,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(height: 40, width: 1, color: HexColor("#C5D9E9"),),
                          ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 20
                    ),
                    child: Stack(alignment: Alignment.centerLeft,
                      children: [
                        Image.asset("lib/pages/ngo/assets/text-bg.png",
                        fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Image.asset("lib/pages/ngo/assets/mail.png",
                              width: 16,
                              fit: BoxFit.fill),
                              const SizedBox(width: 24,),
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Email",
                                  hintStyle: CustomFonts.kumbhSans16W700(
                                    color: HexColor("#83828E")
                                  ),
                                  border: InputBorder.none
                                ),
                              ))
                            ],
                          ),
                        ),
                        Positioned(left: 52,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(height: 40, width: 1, color: HexColor("#C5D9E9"),),
                          ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 20
                    ),
                    child: Stack(alignment: Alignment.centerLeft,
                      children: [
                        Image.asset("lib/pages/ngo/assets/text-bg.png",
                        fit: BoxFit.fill),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Image.asset("lib/pages/ngo/assets/phone.png",
                              width: 16,
                              fit: BoxFit.fill),
                              const SizedBox(width: 24,),
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Number",
                                  hintStyle: CustomFonts.kumbhSans16W700(
                                    color: HexColor("#83828E")
                                  ),
                                  border: InputBorder.none
                                ),
                              ))
                            ],
                          ),
                        ),
                        Positioned(left: 52,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(height: 40, width: 1, color: HexColor("#C5D9E9"),),
                          ))
                      ],
                    ),
                  ),
                  Stack(alignment: Alignment.center,
                    children: [
                      Image.asset("lib/pages/ngo/assets/btn-bg.png"),
                      Text(
                          "Submit",
                          style: CustomFonts.kumbhSans20W800(
                            color: Colors.white
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 32,)
                ],
              ),
            ),
          ),
        ],
      ));
  }
}