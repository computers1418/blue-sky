
import 'package:blue_sky/pages/home_screen/components/view/pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'commen_widgets.dart';
import '../../../common_utilities/commen_strings.dart';

class DoctorInsurenceView extends StatefulWidget {
  const DoctorInsurenceView({super.key});

  @override
  State<DoctorInsurenceView> createState() => _DoctorInsurenceViewState();
}

class _DoctorInsurenceViewState extends State<DoctorInsurenceView> {
  int selectedIndex = -1;
  List<Map> data = [
    {
      'icon': 'hdfc.png',
      'text': 'HDFC Life Insurance Company Ltd.',
    },
    {
      'icon': 'max_bharat.png',
      'text': 'Max Life Insurance',
    },
    {
      'icon': 'birla.png',
      'text': 'Birla Sun Life Insurance',
    },
    {
      'icon': 'sbi.png',
      'text': 'SBI Life Insurance Company Ltd.',
    },
    {
      'icon': 'india_first.png',
      'text': 'IndiaFirst Life Insurance',
    },
    {
      'icon': 'lic.png',
      'text': 'Life Insurance Corporation of India',
    },
  ];


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,top: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Insurence',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: const Color(0xFF211F2B),
              ),
            ),
          ),
        ),

        MyPageView(
            pageViewHeight: (485).h,pagesCount: 2,
            itemBuilder: (context,index) {

          return Container(
            height: (485).h,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 28),
            decoration: CommonWidgets.imageDecoration("${CommonStrings.bac}insurence.png"),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: data.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {

                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: SizedBox(
                      height: (485).h / 4 - 13,
                      width: double.infinity,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Image.asset(
                                '${CommonStrings.image}${data[index]['icon']}',
                                height: 53,
                                width: 53,
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Expanded(
                                child: Text(
                                  data[index]['text'],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w800,
                                    color: const Color(0xff211F2B),
                                  ),
                                ),
                              ),
                              Image.asset(selectedIndex!=index?"${CommonStrings.bac}unselect_round.png":"${CommonStrings.bac}select_round.png",height: 38,width: 38,),
                              const SizedBox(
                                width: 45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
        }),
      ],
    );
  }


}

// Widget k() {
//   return Column(
//     children: List.generate(
//       data.length,
//       (index) {
//         return ValueListenableBuilder<bool>(
//             valueListenable: valueNotifier[index],
//             builder: (context, isSelected, _) {
//               return InkWell(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onTap: () {
//                   for (var element in valueNotifier) {
//                     if (element != valueNotifier[index]) {
//                       element.value = false;
//                     } else {
//                       element.value = !isSelected;
//                     }
//                   }
//                 },
//                 child: SizedBox(
//                   height: 120.h,
//                   width: ScreenUtil().screenWidth,
//                   child: DecoratedBox(
//                       decoration: CommonWidgets.imageDecoration(!isSelected
//                           ? "${CommonStrings.bac}insurence_bac.png"
//                           : "${CommonStrings.bac}insurence_selected.png"),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const SizedBox(
//                             width: 30,
//                           ),
//                           SizedBox(
//                             width: 80.w,
//                             height: 100.h,
//                             child: Padding(
//                               padding: EdgeInsets.all(12.5.r),
//                               child: DecoratedBox(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(25.r),
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                       '${CommonStrings.image}${data[index]['icon']}',
//                                     ),
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5.h,
//                           ),
//                           Flexible(
//                             child: SizedBox.expand(
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 20.w,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Flexible(
//                                       child: Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           data[index]['text'],
//                                           textAlign: TextAlign.left,
//                                           style: TextStyle(
//                                             fontSize: 13.sp,
//                                             fontWeight: FontWeight.w800,
//                                             color: const Color(0xff211F2B),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 50.w,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//               );
//             });
//       },
//     ),
//   );
// }
