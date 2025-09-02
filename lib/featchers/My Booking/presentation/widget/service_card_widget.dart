import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:my_salon/core/Widgets/status_badge_widget.dart';
import 'package:my_salon/featchers/My%20Booking/data/model/service_card_model_dummy.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCardWidget extends StatelessWidget {
  final ServiceCardModelDUMMY model;

  const ServiceCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 129.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E3E3)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        spacing: 10.h,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ServiceInfoRowWidget(serviceInfo: model.serviceInfo),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProviderDetailsWidget(
                appImage: model.providerAppImage,
                name: model.providerName,
                specialty: model.providerSpecialty,
              ),
              StatusBadgeWidget(
                text: model.statusText,
                width: 110,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
