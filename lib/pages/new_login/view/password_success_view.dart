import 'package:blue_sky/pages/new_login/common_widget/view/comman_auth_view.dart';
import 'package:blue_sky/pages/new_login/view/login.dart';
import 'package:blue_sky/widgets/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordSuccessView extends StatelessWidget {
  const PasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
      onWillPop: ()
      {
        return Future.value(PopupMessageOnBack().showChangePassSuccessPopup(context));
      },
      child: CommanAuthView(
        isChangePassword: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Password',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Text(
              'Changed Successfully',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        subtitle:
            'Browse into our App to book appointment with our finest doctors.',
        buttonTitle: 'SIGN IN',
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const LoginView()),(route) => false);
        },
        imageUrl: 'lib/pages/new_login/assets/password_success.png',
      ),
    );
  }
}
