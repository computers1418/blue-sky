import 'package:blue_sky/constants/text_style.dart';
import 'package:blue_sky/pages/Privacy_policy/privacy_policy.dart';
import 'package:blue_sky/pages/cancel_appointment/cancel_appointment.dart';
import 'package:blue_sky/pages/change_password/change_password.dart';
import 'package:blue_sky/pages/choose_medicine/choose_medicine.dart';
import 'package:blue_sky/pages/choose_surgery/choose_surgery.dart';
import 'package:blue_sky/pages/delete_account/delete_account.dart';
import 'package:blue_sky/pages/new_screens/canceled_details.dart';
import 'package:blue_sky/pages/new_screens/insurence_screen.dart';
import 'package:blue_sky/pages/new_screens/location_screen.dart';
import 'package:blue_sky/pages/new_screens/next_appointment.dart';
import 'package:blue_sky/pages/new_screens/appointment_details.dart';
import 'package:blue_sky/pages/new_screens/previous_appointments.dart';
import 'package:blue_sky/pages/new_screens/problems_decribtion.dart';
import 'package:blue_sky/pages/new_screens/reschedule_details.dart';
import 'package:blue_sky/pages/new_screens/test_and_meds.dart';
import 'package:blue_sky/pages/new_screens/upcoming_appoinment.dart';
import 'package:blue_sky/pages/ngo/ngo.dart';
import 'package:blue_sky/pages/previous_appointments/previous_appointments.dart';
import 'package:blue_sky/pages/schedule/schedule.dart';
import 'package:blue_sky/pages/screens/dash_board_view.dart';
import 'package:blue_sky/pages/screens/edit_profie.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../choose_problem/choose_problem.dart';
import '../choose_test/choose_test.dart';
import '../delete_account/popups.dart';

class MyScreens extends StatefulWidget {
  const MyScreens({super.key});

  @override
  State<MyScreens> createState() => _MyScreensState();
}

class _MyScreensState extends State<MyScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F7FB"),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const NGO(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "NGO",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Schedule(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Schedule",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const CancelAppointment(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Cancel Appointment",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const PreviousAppointments(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Previous Appointment",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const PrivacyPolicy(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Privacy Policy",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ChangePassword(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Change Password",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => EditProfile(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Edit Profile",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => PreviousAppointment(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Previous Appointments",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const DeleteAccount(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Delete Account Screen",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              DeletePopups().showDeleteSuccessPopup(context);
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Delete Success Popup",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              DeletePopups().showConfirmDeletePopup(context);
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Confrim Delete Popup",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              DeletePopups().showUsernamePasswordPopup(context);
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Username Password Popup",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              DeletePopups().showOtpPopup(context);
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Otp Popup",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ChooseSurgery(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Choose Surgery",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ChooseMedicine(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Choose Medicine",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ChooseTest(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Choose Test",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ChooseProblem(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Choose Problem",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const DashbordView(),
                ),
              );
            },
            child: Card(
              color: HexColor("#F2F7FB"),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Home Screen",
                  style: CustomFonts.kumbhSans20W700(),
                ),
              ),
            ),
          ),
          //---------------NEW-SCREENS-------------------------------------------
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const TestAndMeds(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Test And Meds",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => RescheduleDetails(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Reschedule",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CancelledDetails(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Cancelled Details",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  ProblemDescription(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Problem Description",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      UpcomingAppointment(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Upcoming Appointment",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => AppointmentDetails(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Appointment Details",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  LocationScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Location",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => NextAppointment(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Next Appointment",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const InsuranceScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Insurence",
                style: CustomFonts.kumbhSans20W700(),
              ),
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (BuildContext context) =>
          //             const PreviousAppointment(),
          //       ),
          //     );
          //   },
          //   child: Card(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: Text(
          //         "Previous Appointments(New)",
          //         style: CustomFonts.kumbhSans20W700(),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
