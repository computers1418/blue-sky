import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChooseProblem extends StatefulWidget {
  const ChooseProblem({Key? key}) : super(key: key);

  @override
  State<ChooseProblem> createState() => _ChooseProblemState();
}

class _ChooseProblemState extends State<ChooseProblem> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  List items = [
    "Anesthetics",
    'Braces',
    'Bridges',
    'Cleaning',
    'Cosmetic Dentistry',
    'Crown',
    'Dentrus',
    'Extraction',
    'Filling',
    'General Test',
    'Gum Disease',
    'Implant',
    'Root Canal',
    'Teeth Whitening',
    'Teeth Straightning'
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: Column(
        children: [
          MenuAppBarTwo(scaffoldKey: scaffoldKey),
          Expanded(
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32,),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Choose Problem",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: HexColor("#FF8412"),
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                            ),
                          children: [
                            const TextSpan(
                              text: "You can select multiple problems and click "
                            ),
                            const TextSpan(
                              text: "DONE at bottom ",
                              style: TextStyle(
                                decoration: TextDecoration.underline
                              )
                            ),
                            const TextSpan(
                              text: "to proceed."
                            ),
                          ]
                        )),
                        const SizedBox(height: 16,)
                      ],
                    ),
                  ),
                  for (int i = 0; i < items.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            selected = i;
                          }),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image.asset(
                                "lib/pages/choose_problem/assets/card.png",
                                width: 180,
                              ),
                              Positioned(
                                top: 30,
                                child: Image.asset(
                                  "lib/pages/choose_problem/assets/${items[i]}.png",
                                  width: 23,
                                  color: selected == i
                                      ? HexColor("#FF8412")
                                      : Colors.black,
                                ),
                              ),
                              Positioned(
                                top: 66,
                                child: SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                  child: Text(
                                    items[i],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: selected == i
                                            ? HexColor("#FF8412")
                                            : Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 6,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      "lib/pages/choose_problem/assets/card-blue.png",
                                      width: 160,
                                    ),
                                    Image.asset(
                                      "lib/pages/choose_problem/assets/radio-blue.png",
                                      width: 50,
                                    ),
                                    if (selected == i)
                                      Image.asset(
                                        "lib/pages/choose_problem/assets/radio-orange.png",
                                        width: 30,
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        !(i + 1 < items.length)
                            ? const SizedBox(
                                width: 180,
                              )
                            : GestureDetector(
                                onTap: () => setState(() {
                                  selected = i + 1;
                                }),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.asset(
                                      "lib/pages/choose_problem/assets/card.png",
                                      width: 180,
                                    ),
                                    Positioned(
                                      top: 23,
                                      child: Image.asset(
                                        "lib/pages/choose_problem/assets/${items[i + 1]}.png",
                                        width: 30,
                                        color: selected == i + 1
                                            ? HexColor("#FF8412")
                                            : Colors.black,
                                      ),
                                    ),
                                    Positioned(
                                      top: 66,
                                      child: SizedBox(width: MediaQuery.of(context).size.width * 0.33,
                                  child: Text(
                                    items[i+1],
                                    textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: selected == i + 1
                                                  ? HexColor("#FF8412")
                                                  : Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 6,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            "lib/pages/choose_problem/assets/card-blue.png",
                                            width: 160,
                                          ),
                                          Image.asset(
                                            "lib/pages/choose_problem/assets/radio-blue.png",
                                            width: 50,
                                          ),
                                          if (selected == i + 1)
                                            Image.asset(
                                              "lib/pages/choose_problem/assets/radio-orange.png",
                                              width: 30,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
                Align(alignment: Alignment.centerRight,
                                  child: Stack(alignment: Alignment.center,
                                    children: [
                                      Image.asset("assets/done-btn.png",
                                                                  height: 110,),
                                      const Text(
                                        "DONE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
