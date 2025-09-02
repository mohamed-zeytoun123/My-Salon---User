import 'dart:developer';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/appointment_card_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingAppointmentCardWidget extends StatelessWidget {
  const UpcomingAppointmentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomHeaderWidget(
            title: "Upcoming appointment",
            titleStyle: AppTextStyles.white24w400Meditative
                .copyWith(color: Color(0xff43152A)),
            onTap: () {
              log("Upcoming appointment");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AllAppointmentPage()));
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 197.h,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AllAppointmentProcessingPage()));
                  },
                  child: AppointmentCardWidget(
                      bodyAppointmentCardModel:
                          DummyData.appointmentsDUMMY[index]),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: DummyData.appointmentsDUMMY.length),
        ),
      ],
    );
  }
}
