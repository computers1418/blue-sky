import 'dart:ui';
import 'package:flutter/material.dart';

class PopupAlertDialog extends StatelessWidget {
  Widget body;
  String imagePath;
  double height;
  PopupAlertDialog({super.key, required this.body, required this.imagePath, required this.height});
  late double width ;

  @override
  Widget build(BuildContext context) {
    height = height ?? MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Dialog(
        clipBehavior: Clip.hardEdge,
        backgroundColor: const Color(0xff171632),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          height: height,
          width: width * 0.7,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagePath,height: 47, width: 47,),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                alignment: Alignment.center,
                child:  body
              ),
              const Spacer(),
              Container(
                height: 60,
                width: width*0.8,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(onPressed: (){
                      Navigator.pop(context, true);
                      Navigator.pop(context, true);
                    },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    child: const Text('Agree',style: TextStyle(
                      color: Color(0xff171632),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),),
                    Container(height: 60,width: 2,color: const Color(0xffDBDBDB)),
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(false);
                    },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: const Text('Disagree',style: TextStyle(
                        color: Color(0xffFF8412),
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
