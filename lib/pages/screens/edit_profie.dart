import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../common_utilities/commen_strings.dart';
import '../common_utilities/commen_widgets.dart';
import '../common_utilities/common_style.dart';
class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F7FB),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          Expanded(
                      child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 138+40,
                          width: 138+40,
                          decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Frame 21.png"),
                          alignment: Alignment.center,
                          child: const SizedBox(
                            height: 125,
                            width: 125,
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("${CommonProfileStrings.bacEditProfile}edit_profile.png"),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 3,
                          bottom: 3,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 13.png"),
                      alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 17,right: 17),
                              child: SvgPicture.asset("${CommonProfileStrings.bacEditProfile}Vector (2).svg",height: 18,width: 18,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height:20 ,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Name",style: CommonStyle.kumbhSans15W700(),),
                                Row(
                                  children: [
                                    SvgPicture.asset("${CommonProfileStrings.bacEditProfile}bx_edit-alt.svg",height: 15,width: 15),
                                    Text("edit",style: CommonStyle.kumbhSans12W700())
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Email Address",style: CommonStyle.kumbhSans15W700(),),
            
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Password",style: CommonStyle.kumbhSans15W700(),),
            
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Phone Number",style: CommonStyle.kumbhSans15W700(),),
            
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(left: 25,right: 10),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
            
            
                                  border: InputBorder.none,
            
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down_rounded,color: Colors.black,
                                )
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("City",style: CommonStyle.kumbhSans15W700(),),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(left: 25,right: 10),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
            
            
                                  border: InputBorder.none,
            
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down_rounded,color: Colors.black,
                                  )
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("State",style: CommonStyle.kumbhSans15W700(),),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
            
                      Stack(
                        children: [
            
                          Container(
                            height: 50+15,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(left: 25,right: 10),
                            alignment: Alignment.center,
                            decoration: CommonWidgets.imageDecoration("${CommonProfileStrings.bacEditProfile}Rectangle 910.png"),
                            child:TextField(
                              style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E)),
                              decoration: const InputDecoration(
            
            
                                  border: InputBorder.none,
            
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down_rounded,color: Colors.black,
                                  )
            
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Country",style: CommonStyle.kumbhSans15W700(),),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30,),
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: "Joined",style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E))),
                                  TextSpan(text: " 04 March 2022",style: CommonStyle.kumbhSans15W800()),
                                ]
                              ),
                            ),
                            Text("Log Out",style: CommonStyle.kumbhSans15W800(color:const Color(0xffD71E1E)),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
            
                      Align(
                          alignment: Alignment.centerLeft,
            
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Delete Account",style: CommonStyle.kumbhSans15W800(color: const Color(0xff83828E))),
                          ))
                    ],),
                  ),
                  const SizedBox(height: 50,),
            
            
            
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
