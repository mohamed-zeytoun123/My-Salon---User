import 'dart:developer';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/provider_info_row_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/service_info_row_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/booking_date_time_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/location_text_widget.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/body_appointment_card_model_dummy.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/Cancel_Order_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyAppointmentCardWidget extends StatelessWidget {
  final BodyAppointmentCardModelDUMMY appointmentCardModel;

  const BodyAppointmentCardWidget({
    super.key,
    required this.appointmentCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: AppColors.colorThird,
        child: Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 10.h, left: 10.w, right: 10.w),
          child: Column(
            spacing: 6.h
            ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceInfoRowWidget(
                  serviceInfo: appointmentCardModel.serviceInfo),
              ProviderInfoRowWidget(
                  providerInfoModel: appointmentCardModel.providerInfoModel),
              LocationTextWidget(location: appointmentCardModel.location),
              BookingDateTimeWidget(
                  bookingDateTime: appointmentCardModel.bookingDateTime),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButtonWhiteWidget(
                      width: 64,
                      hight: 32,
                      label: "Cancel",
                      onPressed: () {
                        log("Cancel");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CancelOrderPage()));
                      },
                      borderColor: Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white14w400
                          .copyWith(fontSize: 11.3.sp, color: Color(0xff666666))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
