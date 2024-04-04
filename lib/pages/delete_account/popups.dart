import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hexcolor/hexcolor.dart';

class DeletePopups {
  void showOtpPopup(context) async {
    showGeneralDialog(
  context: context,
  barrierColor: HexColor("#F2F7FB").withOpacity(.95), // Background color
  barrierDismissible: false,
  barrierLabel: 'Dialog',
  transitionDuration: const Duration(milliseconds: 400),
  pageBuilder: (context, __, ___) {
    return StatefulBuilder(
      builder: (context, setState) => Material(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 390,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(
                        "lib/pages/delete_account/assets/pop-card.png"))),
            child:  Column(
              children: [
                const SizedBox(height: 32,),
                Stack(alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 16, bottom: 10),
                      child: Image.asset("lib/pages/delete_account/assets/otp.png",
                                      height: 100,),
                    ),
                Positioned(top: 0, right: 34,
                                  child: IconButton(iconSize: 32,
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                ),
                const Positioned(bottom: 0,
                                  child: Text("OTP Sent",
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w800),),
                ),
                    
                  ],
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: OtpTextField(
                    numberOfFields: 6,
                    borderColor: Colors.black,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: false, 
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                        //handle validation or checks here           
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                          showDialog(
                      context: context,
                      builder: (context){
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                            );
                        }
                      );
                    }, // end onSubmit
                  ),
                ),
                const SizedBox(height: 8,),
                Stack(alignment: Alignment.center,
                  children: [
                    Image.asset("lib/pages/delete_account/assets/continue.png",
                    height: 120,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Continue",
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
              ],
            ),
          ),
              
        ],
      ),
    )
  );
    },
);
  }

  void showUsernamePasswordPopup(context) async {
    showGeneralDialog(
  context: context,
  barrierColor: HexColor("#F2F7FB").withOpacity(.95), // Background color
  barrierDismissible: false,
  barrierLabel: 'Dialog',
  transitionDuration: const Duration(milliseconds: 400),
  pageBuilder: (context, __, ___) {
    return StatefulBuilder(
      builder: (context, setState) => Material(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 390,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(
                        "lib/pages/delete_account/assets/pop-card.png"))),
            child:  Column(
              children: [
                const SizedBox(height: 32,),
                Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 34),
                                    child: IconButton(iconSize: 32,
                                                              onPressed: () => Navigator.pop(context),
                                                              icon: const Icon(Icons.close),
                                                            ),
                                  ),
                ),
                Container(
                      width: double.infinity,
                      child: Image.asset("lib/pages/delete_account/assets/user-del.png",
                                      height: 60,),
                ),  
                
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(flex: 3,
                          child: Text("User Name",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                      ),
                        Expanded(flex: 4,
                          child: Text("xxyy22@gmail.com",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                        ),
                    ],
                  ),
                ),
                  const SizedBox(height: 16,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                    children: [
                      Expanded(flex: 3,
                          child: Text("Phone Number",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                      ),
                        Expanded(flex: 4,
                          child: Text("+91 9087654321",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                        ),
                    ],
                                    ),
                  ),
                  const SizedBox(height: 8,),
                Stack(alignment: Alignment.center,
                  children: [
                    Image.asset("lib/pages/delete_account/assets/continue.png",
                    height: 120,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Continue",
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
              ],
            ),
          ),
              
        ],
      ),
    )
  );
    },
);
  }

  void showConfirmDeletePopup(context) async {
    showGeneralDialog(
  context: context,
  barrierColor: HexColor("#F2F7FB").withOpacity(.95), // Background color
  barrierDismissible: false,
  barrierLabel: 'Dialog',
  transitionDuration: const Duration(milliseconds: 400),
  pageBuilder: (context, __, ___) {
    return StatefulBuilder(
      builder: (context, setState) => Material(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 390,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(
                        "lib/pages/delete_account/assets/pop-card.png"))),
            child:  Column(
              children: [
                const SizedBox(height: 32,),
                Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 34),
                                    child: IconButton(iconSize: 32,
                                                              onPressed: () => Navigator.pop(context),
                                                              icon: const Icon(Icons.close),
                                                            ),
                                  ),
                ),
                Container(
                      width: double.infinity,
                      child: Image.asset("lib/pages/delete_account/assets/user-del.png",
                                      height: 60,),
                ),  
                
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(flex: 3,
                          child: Text("Are you sure you want to permanently delete your account?",
                            textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                      ),
                        
                    ],
                  ),
                ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                    children: [
                      Expanded(flex: 3,
                          child: Text("This action cannot be undone.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                      ),
                    ],
                                    ),
                  ),
                  const SizedBox(height: 8,),
                Stack(alignment: Alignment.center,
                  children: [
                    Image.asset("lib/pages/delete_account/assets/continue.png",
                    height: 120,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Delete Account",
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
              ],
            ),
          ),
              
        ],
      ),
    )
  );
    },
);
  }

  void showDeleteSuccessPopup(context) async {
    showGeneralDialog(
  context: context,
  barrierColor: HexColor("#F2F7FB").withOpacity(.95), // Background color
  barrierDismissible: false,
  barrierLabel: 'Dialog',
  transitionDuration: const Duration(milliseconds: 400),
  pageBuilder: (context, __, ___) {
    return StatefulBuilder(
      builder: (context, setState) => Material(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 390,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(
                        "lib/pages/delete_account/assets/pop-card.png"))),
            child:  Column(
              children: [
                const SizedBox(height: 32,),
                Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 34),
                                    child: IconButton(iconSize: 32,
                                                              onPressed: () => Navigator.pop(context),
                                                              icon: const Icon(Icons.close),
                                                            ),
                                  ),
                ),
                Container(
                      width: double.infinity,
                      child: Image.asset("lib/pages/delete_account/assets/done.png",
                                      height: 60,),
                ),  
                
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(flex: 3,
                          child: Text("Your account was Successfully deleted. Fair Well.",
                            textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w800),),
                      ),
                        
                    ],
                  ),
                ),
                  const SizedBox(height: 8,),
                Stack(alignment: Alignment.center,
                  children: [
                    Image.asset("lib/pages/delete_account/assets/continue.png",
                    height: 120,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Ok",
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
              ],
            ),
          ),
              
        ],
      ),
    )
  );
    },
);
  }



}
