import 'dart:io';
import 'package:blue_sky/constants/strings.dart';
import 'package:blue_sky/pages/new_login/view/onboardingview.dart';
import 'package:blue_sky/util/functions/orientation_lock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_autofill/sms_autofill.dart';

SmsAutoFill smsAutoFill = SmsAutoFill();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Brightness.dark, //<-- For Android SEE HERE (dark icons)
      statusBarBrightness: Brightness.light,
    ));
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: MyBehavior(),
                child: MediaQuery(

                    ///Setting font does not change with system font size
                    data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: child!),
              );
            },
            debugShowCheckedModeBanner: false,
            title: AppInfo.applicationName,
            theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'KumbhSans',
                bottomSheetTheme: const BottomSheetThemeData(
                    backgroundColor: Colors.transparent)),
            home: const OnBoardingView(),
          );
          // home:   const DashbordView(),);
          // home:   Scaffold(bottomNavigationBar: const CommonBottomButton()),);
        });
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
