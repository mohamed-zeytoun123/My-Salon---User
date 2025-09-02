import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Body_Appointment_Card_Widget.dart';
import 'package:my_salon/core/colors/Background_color_pages.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/body_appointment_card_model_dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentCardWidget extends StatelessWidget {
  final BodyAppointmentCardModelDUMMY bodyAppointmentCardModel;
  const AppointmentCardWidget({
    super.key,
    required this.bodyAppointmentCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(left: 2.w, bottom: 5.h, right: 5.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SizedBox(
        height: 196.h,
        width: 383.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Row(
            children: [
              SizedBox(
                height: double.infinity,
                width: 16.w,
                child: BackgroundColorPages(),
              ),
              BodyAppointmentCardWidget(
                appointmentCardModel: bodyAppointmentCardModel,
              )
            ],
          ),
        ),
      ),
    );
  }
}
