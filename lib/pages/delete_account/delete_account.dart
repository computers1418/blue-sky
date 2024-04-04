import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/text_style.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({ Key? key }) : super(key: key);

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Text(
                          "Delete Account",
                          style: CustomFonts.kumbhSans20W800(),
                        ),
                  ),
                  Stack(
                    children: [
                      Image.asset("lib/pages/delete_account/assets/card.png",
                      width: double.infinity,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 44,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: Text(
                                    "Enter Email",
                                    style: CustomFonts.kumbhSans15W700(),
                                                        ),
                                  ),
                                  Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Stack(alignment: Alignment.center,
                                  children: [
                                    Image.asset("lib/pages/delete_account/assets/bg.png",
                                      width: double.infinity,),
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                                        hintText: "Enter Email",
                                        hintStyle: CustomFonts.kumbhSans15W700(
                                          color: Colors.grey
                                        ),
                                        border: InputBorder.none
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                "Enter Phone Number",
                                style: CustomFonts.kumbhSans15W700(),
                                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Stack(alignment: Alignment.center,
                                  children: [
                                    Image.asset("lib/pages/delete_account/assets/bg.png",
                                      width: double.infinity,),
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                                        hintText: "Enter Phone Number",
                                        hintStyle: CustomFonts.kumbhSans15W700(
                                          color: Colors.grey
                                        ),
                                        border: InputBorder.none
                                      ),
                                    )
                                  ],
                                ),
                              ),
                                ],
                              ),
                            ),
                            
                            const SizedBox(height: 0,),
                            Stack(alignment: Alignment.center,
                              children: [
                                Image.asset("lib/pages/delete_account/assets/btn-bg.png",
                                  width: double.infinity,),
                                  const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("Delete Account",
                            style: TextStyle(fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),),
                          ),
                              ],
                            ),
                          ],
                        ),
                      )
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