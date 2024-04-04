
  import 'package:blue_sky/constants/hex_color_extention.dart';
import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_utilities/common_style.dart';
import 'bottomnavigation_widgets.dart';


  class CommonBottomButton extends StatelessWidget {
     CommonBottomButton({super.key,required this.proceed});
    Function proceed;

    @override
    Widget build(BuildContext context) {
      ScreenUtil.init(context);

      return  Container(
          decoration: BoxDecoration(
            color: '#423D80'.toColor().withOpacity(0.5),
          ),
          height: 75.h,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 15,
              ),
              GetCustomNavigationBar(
                title: 'Dark Mode',
                onTap: () {},
                child: "assets/menu_app_bar/moon.svg",
              ),
              GetCustomNavigationBar(
                title: 'Home',
                onTap: () {},
                child: "assets/menu_app_bar/home.svg",
              ),
              GetCustomNavigationBar(
                title: 'Whatsapp',
                onTap: () {},
                child: "assets/menu_app_bar/whatsapp.svg",
              ),
              GetCustomNavigationBar(
                title: 'Call',
                onTap: () {},
                child: "assets/menu_app_bar/call.svg",
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24,top: 17,right: 17),
                child: GestureDetector(
                  onTap: () {
                    proceed();
                  },
                  child: Container(
                    height: 50,
                    width: 118,
                    // padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        stops: [0.0, 1.0],
                        colors: [
                          Color.fromRGBO(91, 85, 171, 1),
                          Color.fromRGBO(43, 38, 90, 1)
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Proceed",
                        style: CommonStyle.kumbhSans15W700(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );

    }
  }
