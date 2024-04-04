import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/text_style.dart';

class Schedule extends StatefulWidget {
  const Schedule({ Key? key }) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  List date = [16, 17, 18, 19, 20, 21, 22];
  List day = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  
  int selectedItem = 2;

  List timeList = [
    '9:30am - 10:30am',
    '10:30am - 11:30am',
    '11:30am - 12:30pm',
    '2:00pm - 3:00pm',
    '3:00pm -4:00pm',
    '4:00pm - 5:00pm',
    '5:00pm -6:00pm',
    '6:00pm - 7:00pm'
  ];

  int selectedTime = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "When do you want an",
                          style: CustomFonts.kumbhSans20W800(),
                        ),
                      ),
                      Positioned(bottom: 0,
                        child: Text(
                          "appointment?",
                          style: CustomFonts.kumbhSans20W800(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "Select a date",
                    style: CustomFonts.kumbhSans16W700(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        for(int i = 0; i < 7; i++)
                        GestureDetector(
                            onTap: () => setState(() {
                              selectedItem = i;
                            }),
                            child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Stack(alignment: Alignment.center,
                              children: [
                                Image.asset("lib/pages/schedule/assets/${selectedItem == i ? 'date-active' : 'date'}.png",
                                  width: selectedItem == i ? 86 : 100,
                                ),
                                Column(
                                  children: [
                                    Text(date[i].toString(),
                                    style: CustomFonts.kumbhSans20W800(),),
                                    const SizedBox(height: 6,),
                                    Text('Jun',
                                    style: CustomFonts.kumbhSans10W700(),),
                                    const SizedBox(height: 4,),
                                    Container(height: 20, width: 2, color: Colors.black,),
                                    const SizedBox(height: 4,),
                                    Text(day[i],
                                    style: CustomFonts.kumbhSans12W700(),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "Select Time",
                    style: CustomFonts.kumbhSans16W700(),
                  ),
                ),
                Stack(alignment: Alignment.center,
                  children: [
                    Image.asset("lib/pages/schedule/assets/card.png",
                    height: 436, fit: BoxFit.fill,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MyPageView(pageViewHeight: 330, 
                      pagesCount: 2,
                      itemBuilder: (con, index){
                        return Column(
                        children: [
                          for(int i = 0; i < 8; i+=2)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(alignment: Alignment.centerRight,
                                  child: Stack(alignment: Alignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: selectedTime == i ? 6 : 0),
                                        child: GestureDetector(
                                          onTap: () => setState(() {
                                            selectedTime = i;
                                          }),
                                            child: Image.asset("lib/pages/schedule/assets/"
                                          "${selectedTime == i ? 'time-active' : 'time'}.png",
                                          fit: BoxFit.fill,
                                          width: selectedTime == i ? 
                                          MediaQuery.of(context).size.width * .37 :
                                          MediaQuery.of(context).size.width * .4,),
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () => setState(() {
                                            selectedTime = i;
                                          }),
                                        child: Text(timeList[i],
                                        style: CustomFonts.kumbhSans14W700(
                                          color: selectedTime == i ?
                                          HexColor("#83828E") : Colors.black
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8,),
                              Expanded(
                                child: Align(alignment: Alignment.centerLeft,
                                  child: Padding(
                                        padding: EdgeInsets.only(left: selectedTime == i + 1 ? 6 : 0),
                                    child: Stack(alignment: Alignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () => setState(() {
                                            selectedTime = i+1;
                                          }),
                                          child: Image.asset("lib/pages/schedule/assets/"
                                          "${selectedTime == i + 1 ? 'time-active' : 'time'}.png",
                                          width: selectedTime == i + 1 ? 
                                          MediaQuery.of(context).size.width * .37 :
                                          MediaQuery.of(context).size.width * .4,),
                                        ),
                                        GestureDetector(
                                          onTap: () => setState(() {
                                            selectedTime = i+1;
                                          }),
                                          child: Text(timeList[i + 1],
                                          style: CustomFonts.kumbhSans14W700(
                                            color: selectedTime == i + 1 ?
                                            HexColor("#83828E") : Colors.black
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                        ],
                      );
                      }, 
                      
                      ),
                    )
                  ],
                ),
                Align(alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Stack(alignment: Alignment.center,
                                    children: [
                                      Image.asset("lib/pages/schedule/assets/done.png",
                                                    height: 110,),
                                      Text(
                                        "DONE",
                                        style: CustomFonts.kumbhSans20W800(
                                          color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                )
              ],
            ),
          ),
        ],
      ));
  }
}