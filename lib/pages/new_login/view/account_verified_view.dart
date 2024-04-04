import 'package:blue_sky/pages/new_login/common_widget/view/comman_auth_view.dart';
import 'package:blue_sky/widgets/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../screens/dash_board_view.dart';

class AccountVerifiedView extends StatelessWidget {
  const AccountVerifiedView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
      onWillPop: ()
      {
        return Future.value(PopupMessageOnBack().showSignInSuccessPopup(context));
      },
      child: CommanAuthView(
        isSignIn: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Account',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Verified!',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        subtitle:
            'Browse into our App to book appointment with our finest doctors.',
        buttonTitle: 'GET STARTED',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DashbordView()));
          },
        imageUrl: 'lib/pages/new_login/assets/account_verified.png',
      ),
    );
  }
}
