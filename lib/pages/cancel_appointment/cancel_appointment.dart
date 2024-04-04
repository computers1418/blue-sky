import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/text_style.dart';

class CancelAppointment extends StatefulWidget {
  const CancelAppointment({ Key? key }) : super(key: key);

  @override
  State<CancelAppointment> createState() => _CancelAppointmentState();
}

class _CancelAppointmentState extends State<CancelAppointment> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  List reasons = [
'Booked by mistake',
'Cost is high',
'Changed my mind',
'Dont have issue anymore',
'Already Treated'
  ];
  
  String selectedReason = 'Booked by mistake';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Cancel Appointments",
                        style: CustomFonts.kumbhSans20W800(),
                      ),
                    ),
                    Stack(alignment: Alignment.center,
                      children: [           
                        Image.asset("lib/pages/cancel_appointment/assets/card.png",
                        height: 260,
                        fit: BoxFit.cover,),  
                        Positioned(
                          left: 48, top: 10,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 48,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 80),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Gum Evaluation",
                                            style: CustomFonts.kumbhSans16W700(),),
                                            Text("Dental Specialist ",
                                            style: CustomFonts.kumbhSans10W600(
                                              color: HexColor("#83828E")
                                            ),),
                                          ],
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 34,),
                              SizedBox(width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(flex: 3,
                                      child: Text("Patient",
                                        style: CustomFonts.kumbhSans15W700(
                                        ),),
                                    ),
                                    Expanded(flex: 4,
                                      child: Text("Neil Harris",
                                        style: CustomFonts.kumbhSans15W700(
                                          color: HexColor("#83828E")
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4,),
                              SizedBox(width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(flex: 3,
                                      child: Text("Date & Time",
                                        style: CustomFonts.kumbhSans15W700(
                                        ),),
                                    ),
                                    Expanded(flex: 4,
                                      child: Text("03 July, 9:00 am",
                                        style: CustomFonts.kumbhSans15W700(
                                          color: HexColor("#83828E")
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4,),
                              SizedBox(width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(flex: 3,
                                      child: Text("Problem",
                                        style: CustomFonts.kumbhSans15W700(
                                        ),),
                                    ),
                                    Expanded(flex: 4,
                                      child: Text("Gum Disease",
                                        style: CustomFonts.kumbhSans15W700(
                                          color: HexColor("#83828E")
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),                     
                        Positioned(
                          top: 30,
                        left: 30,
                          child: Image.asset("lib/pages/previous_appointments/assets/img.png",
                            height: 92,
                            ),
                        ),
                        Positioned(
                          top: 30,
                        right: 12,
                                child: Stack(alignment: Alignment.center,
                                  children: [
                                    Image.asset("lib/pages/cancel_appointment/assets/btn-blue.png",
                                                          height: 100,
                                                          ),
                                    Text("4.5",
                                      style: CustomFonts.kumbhSans10W700(
                                        color: Colors.white
                                      ),),
                                  ],
                                ),
                        ),
                        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Reason for Canceling",
                        style: CustomFonts.kumbhSans20W800(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,
                      vertical: 16),
                      child: Stack(
                        children: [
                          Image.asset("lib/pages/cancel_appointment/assets/card2.png",
                              height: 140,
                              fit: BoxFit.fill,),
                          TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 20),
                              hintText: "Write here",
                              hintStyle: CustomFonts.kumbhSans16W700(
                                color: HexColor("#83828E")
                              ),
                              border: InputBorder.none
                            ),
                          )
                        ],
                      ),
                    ),  
                    for(String reason in reasons)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          selectedReason = reason;
                        }),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(alignment: Alignment.center,
                              children: [
                                Image.asset("lib/pages/cancel_appointment/assets/radio.png",
                                height: 46,),
                                if(selectedReason == reason)
                                Image.asset("lib/pages/cancel_appointment/assets/active-radio.png",
                                height: 32,),
                              ],
                            ),
                            const SizedBox(width: 6,),
                            Text(
                            reason,
                            style: CustomFonts.kumbhSans16W700(
                              color: HexColor("#83828E")
                            ),
                          ),
                          ],
                        ),
                      ),
                    ),
                    Stack(alignment: Alignment.center,
                      children: [
                        Image.asset("lib/pages/cancel_appointment/assets/btn-bg.png",
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill,
                                  height: 130,),
                                  Text(
                            "Cancel Appointment",
                            style: CustomFonts.kumbhSans20W800(
                              color: Colors.white
                            ),)
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