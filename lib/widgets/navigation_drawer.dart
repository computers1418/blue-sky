import 'package:blue_sky/constants/custom_colors.dart';
import 'package:blue_sky/constants/icons.dart';
import 'package:flutter/material.dart';

Widget DrawerWidget(BuildContext context)
{
  var screenWidth = MediaQuery.of(context).size.width;
  var screenHeight = MediaQuery.of(context).size.height;

  return  Container(
    clipBehavior: Clip.hardEdge,
    width: screenWidth*0.89,
    decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.all(10),
          height: screenHeight*0.15,
          decoration:  const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: CustomGradient.pinkBlueGradient,
                  stops: [0.15,0.9],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageFiles.PROFILE,height: 65,width: 65,),
                      const SizedBox(width: 20,),
                      const Text("Rahul Kumar",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)
                )
              ],
            ),
          ),
        ),
        SizedBox(height:  screenHeight*0.02,),
        Container(
          margin:EdgeInsets.only(left: screenWidth*0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImageFiles.DOCS),
              const SizedBox(width: 10,),
              const Text("Upcoming Appointments",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15
              ),)
            ],
          ),
        ),
        SizedBox(height:  screenHeight*0.01,),
        const Text("Booking, Test, Surgery,\nReschedule, Cancel",style: TextStyle(color: CustomColors.darkOrange),),
        SizedBox(height:  screenHeight*0.02,),
        Row(
          children: [
            SizedBox(width: screenWidth*0.02,),
            Container(
              height: 2,
              width: screenWidth*0.75,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(height:  screenHeight*0.02,),
        Container(
          margin:  EdgeInsets.only(left: screenWidth*0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImageFiles.PREVIOUS_DOCS),
              const SizedBox(width: 10,),
              const Text("Previous Appointments",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15
              ),)
            ],
          ),
        ),
        SizedBox(height:  screenHeight*0.02,),
        Row(
          children: [
            SizedBox(width:  screenWidth*0.02,),
            Container(
              height: 2,
              width:  screenWidth*0.75,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(height:  screenHeight*0.02,),
        Container(
          margin:  EdgeInsets.only(left: screenWidth*0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImageFiles.MY_ACCOUNT),
              const SizedBox(width: 10,),
              const Text("My Account",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15
              ),)
            ],
          ),
        ),
        SizedBox(height:  screenHeight*0.02,),
        Container(
          margin:  EdgeInsets.only(left: screenWidth*0.17),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageFiles.EDIT,height: 20,width: 20,),
                  const SizedBox(width: 5,),
                  const Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageFiles.DOC_ICON,height: 20,width: 20,),
                  const SizedBox(width: 5,),
                  const Text("How To Book Appointment ?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              SizedBox(height:  screenHeight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageFiles.SETTING,height: 20,width: 20,),
                  const SizedBox(width: 5,),
                  const Text("Settings",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              SizedBox(height:  screenHeight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageFiles.POLICY,height: 20,width: 20,),
                  const SizedBox(width: 5,),
                  const Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        //SizedBox(height: kIsWeb ? screenHeight*0.189: screenHeight*0.206,),
        Stack(
          // overflow: Overflow.visible,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: screenHeight*0.1,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: CustomGradient.pinkBlueGradient,
                      stops: [0.15,0.9],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
            ),
            Positioned(
              right: screenWidth*0.1,
              bottom: screenHeight*0.05,height: 80,width: 80,
              child: Image.asset(ImageFiles.PROFILE2),)
          ],
        )
      ],
    ),
  );
}