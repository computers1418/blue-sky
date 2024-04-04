import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/screens/menu_app_bar_two.dart';
import 'package:flutter/material.dart';
import 'package:blue_sky/constants/asset_string.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../delete_account/popups.dart';

class TestAndMeds extends StatefulWidget {
  const TestAndMeds({super.key});

  @override
  State<TestAndMeds> createState() => _TestAndMedsState();
}

class _TestAndMedsState extends State<TestAndMeds> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  final List<ModelClass> test = [
    ModelClass("X-Ray", AssetString.testAndMedsXRay),
    ModelClass(
        "Oral Cancer\nScreening", AssetString.testAndMedsOralCancerScreening),
    ModelClass("TMJ Exam", AssetString.testAndMedsTmjExam),
    ModelClass("Cavity Test", AssetString.testAndMedsCavityTest),
    ModelClass(
        "Gum Disease\nEvaluation", AssetString.testAndMedsGumDiseaseEvalution),
    ModelClass("Bone Loss Test", AssetString.testAndMedsBoneLossTest),
    ModelClass("Oral Hygiene Test", AssetString.testAndMedsOralhygieneTest),
  ];
  final List<String> medicine = [
    "Amitriptyline",
    "Penciclovir",
    "Valacycliovir",
    "Clindamycin",
    "Amoxicillin",
    "Sodium Fluoride",
    "Cephalexin",
    "Cephalexin"
  ];
  final List<ModelClass> surgery = [
    ModelClass("Root Canal", AssetString.testAndMedsRootCanal),
    ModelClass("Implant", AssetString.testAndMedsImplant),
    ModelClass("Extraction", AssetString.testAndMedsExtraction),
    ModelClass("Cosmetic Dentistry", AssetString.testAndMedsCosmeticDentistry),
    ModelClass("Reconstruction", AssetString.testAndMedsReconstruction),
  ];
  int testSelected = -1;
  int medicineSelected = -1;
  int surgerySelected = -1;

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
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 31),
                      child: GestureDetector(
                        onTap: () => DeletePopups().showOtpPopup(context),
                        child: Text(
                          "Choose Test",
                          style: CustomFonts.kumbhSans20W900(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: test.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 173 / 183),
                      itemBuilder: (_, index) {
                        var item = test[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              testSelected = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      testSelected != index
                                          ? AssetString.testAndMedsTestMedsGridBac
                                          : AssetString
                                              .testAndMedsTestMedsGridSelectedBac,
                                    ))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: SvgPicture.asset(
                                    item.icon,
                                    color: testSelected != index
                                        ? null
                                        : CustomColors.orange,
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Text(
                                    item.text,
                                    style: CustomFonts.kumbhSans15W700(
                                      color: testSelected != index
                                          ? null
                                          : CustomColors.orange,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 31),
                      child: Text(
                        "Choose Medicine",
                        style: CustomFonts.kumbhSans20W900(),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: medicine.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              medicineSelected = index;
                            });
                          },
                          child: Container(
                            height: 65 + 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      medicineSelected != index
                                          ? AssetString.testAndMedsChooseMedListBac
                                          : AssetString
                                              .testAndMedsChooseMedListSelectedBac,
                                    ))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: SvgPicture.asset(
                                    AssetString.testAndMedsMedicine,
                                    width: 26,
                                    color: medicineSelected != index
                                        ? null
                                        : CustomColors.orange,
                                    height: 26,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  medicine[index],
                                  style: CustomFonts.kumbhSans15W700(
                                    color: medicineSelected != index
                                        ? null
                                        : CustomColors.orange,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 31),
                      child: Text(
                        "Choose Surgery",
                        style: CustomFonts.kumbhSans20W900(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: surgery.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 174 / 134),
                      itemBuilder: (_, index) {
                        var item = surgery[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              surgerySelected = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      surgerySelected != index
                                          ? AssetString
                                              .testAndMedsChooseSurgeryListBac
                                          : AssetString
                                              .testAndMedsChooseSurgeryListSelectedBac,
                                    ))),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 35,
                                  left: 30,
                                  child: SvgPicture.asset(
                                    item.icon,
                                    height: 25,
                                    width: 25,
                                    color: surgerySelected != index
                                        ? null
                                        : CustomColors.orange,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      item.text,
                                      style: CustomFonts.kumbhSans15W700(
                                        color: surgerySelected != index
                                            ? null
                                            : CustomColors.orange,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 57 + 40,
                      width: 164 + 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                AssetString.testAndMedsDoneBtn,
                              ))),
                      child: Text(
                        "DONE",
                        style: CustomFonts.kumbhSans20W700(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 57 + 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetString.testAndMedsBottomBtn,
                            ))),
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

class ModelClass {
  String text;
  String icon;

  ModelClass(this.text, this.icon);
}
