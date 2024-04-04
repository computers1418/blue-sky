import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/text_style.dart';

class PreviousAppointments extends StatefulWidget {
  const PreviousAppointments({ Key? key }) : super(key: key);

  @override
  State<PreviousAppointments> createState() => _PreviousAppointmentsState();
}

class _PreviousAppointmentsState extends State<PreviousAppointments> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  List icons = ['tick', 'cancel', 'retry'];

  List status = ['Completed', 'Canceled', 'Rescheduled'];

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
                        "Previous Appointments",
                        style: CustomFonts.kumbhSans20W800(),
                      ),
                    ),
                  for(int i = 0; i < 3; i++)
                    Stack(alignment: Alignment.center,
                      children: [           
                        Image.asset("lib/pages/previous_appointments/assets/card.png",
                        height: 192,
                        fit: BoxFit.cover,),  
                        Positioned(
                          left: 48, top: 0,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 32,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Gum Evaluation",
                                      style: CustomFonts.kumbhSans16W700(),),
                                      Text("03 July, 09:00 am",
                                      style: CustomFonts.kumbhSans10W600(
                                        color: HexColor("#83828E")
                                      ),),
                                      
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 68,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("lib/pages/previous_appointments/assets/${icons[i%3]}.png",
                                  height: 18,),
                                  const SizedBox(width: 10,),
                                  Text(status[i%3],
                                          style: CustomFonts.kumbhSans12W700(),),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),                     
                        Positioned(
                          top: 44,
                        left: 12,
                                child: Stack(alignment: Alignment.center,
                                  children: [
                                    Image.asset("lib/pages/previous_appointments/assets/blue-btn.png",
                                                          height: 100,
                                                          ),
                                    Text("Paid : Rs. 1000",
                                      style: CustomFonts.kumbhSans8W600(
                                        color: Colors.white
                                      ),),
                                  ],
                                ),
                        ),
                        Positioned(
                          top: 20,
                        right: 50,
                          child: Stack(alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8,
                                left: 8, right: 8),
                                child: Image.asset("lib/pages/previous_appointments/assets/img.png",
                                      height: 72,
                                      ),
                              ),
                              Positioned(bottom: 0,
                                                          child: Text("Dr. Angelina Clayton",
                                        style: CustomFonts.kumbhSans8W600(
                                        ),),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 120,
                          child: Container(height: 1,
                          width: MediaQuery.of(context).size.width - 80,
                          color: HexColor("#C5D9E9"),
                        )),
                        Positioned(
                          bottom: -6,
                        right: 12,
                                child: Stack(alignment: Alignment.center,
                                  children: [
                                    Image.asset("lib/pages/previous_appointments/assets/white-btn.png",
                                                          height: 100,
                                                          ),
                                    Text("View",
                                      style: CustomFonts.kumbhSans8W600(
                                      ),),
                                  ],
                                ),
                        ),
                        
                      ],
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