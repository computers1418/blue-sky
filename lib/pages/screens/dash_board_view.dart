
import 'package:blue_sky/pages/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upgrader/upgrader.dart';

import '../home_screen/components/view.dart';
import '../home_screen/homemain_view.dart';
import 'menu_app_bar.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({super.key});

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness:Brightness.dark,
      statusBarColor: Color(0xffF2F7FB), // status bar color
    ));
    ScreenUtil.init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: UpgradeAlert(
        upgrader: Upgrader(
          // canDismissDialog: false,
          // showIgnore: false,
          // showLater: false,
          durationUntilAlertAgain: const Duration(seconds: 2),
          debugLogging: true,
        ),
        child: Scaffold(
          key: scaffoldKey,
          drawer: const ProfileScreen(),
          resizeToAvoidBottomInset: true,
          backgroundColor: const Color(0xffF2F7FB),
          body: Column(
            children:  [
               MenuAppBar(scaffoldKey: scaffoldKey),
              const Expanded(
                child: HomeMainView(),
              ),
            ],
          ),
          extendBody: true,
          bottomNavigationBar: const CommonNavigationBar(),
        ),
      ),
    );
  }
}
