import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/appointment_card_widget.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllAppointmentPage extends StatelessWidget {
  const AllAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
          title: "All Upcoming appointment", isShowBackArrow: false),
      backgroundColor: AppColors.colorThird,
      body: ListView.separated(
        padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        itemCount: DummyData.appointmentsDUMMY.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllAppointmentProcessingPage()),
              );
            },
            child: AppointmentCardWidget(
                bodyAppointmentCardModel: DummyData.appointmentsDUMMY[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10.h);
        },
      ),
    );
  }
}
