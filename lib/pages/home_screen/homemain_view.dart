
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/view.dart';

class HomeMainView extends StatelessWidget {
   const HomeMainView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 17.5.h),
          Padding(
            padding: EdgeInsets.fromLTRB(25.r, 0.r, 25.r, 0.r),
            child: const DoctorHeaderSearchView(),
          ),

          const DoctorTemperatureView(),
          SizedBox(height: 15.h),
          const DoctorQuickSelectView(),
          Padding(
            padding: EdgeInsets.fromLTRB(10.r, 0.r, 10.r, 0.r),
            child: Column(
              children: [
                SizedBox(height: 17.5.h),
                const DoctorOfTheMonthView(),
                SizedBox(height: 20.h),
                const DoctorRatingView(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          const DoctorChooseProblemsView(),
          Column(
            children: [
              SizedBox(height: 20.h),
              const DoctorChooseConsultationView(),
              SizedBox(height: 20.h),
              const DoctorBookAppointmentView(),
              const DoctorClinicMapView(),
            ],
          ),
          const DoctorFindYourDoctorView(),
          Column(
            children: [
              const DoctorInsurenceView(),
              const DoctorDonateToNgoView(),
              SizedBox(height:  75.h),
            ],
          ),
        ],
      ),
    );
  }
}
