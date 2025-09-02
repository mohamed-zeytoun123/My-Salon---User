import 'package:my_salon/featchers/Home/presentation/widgets/add_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/BodyAppointmentCardWidget/Service_Info_Row_Widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCardWithAddButtonWidget extends StatelessWidget {
  const ServiceCardWithAddButtonWidget({
    super.key,
    required this.model,
    required this.isFreelance,
  });

  final ServiceInfoModelDUMMY model;
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113.h,
      width: 373.w,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE3E3E3)),
        color: AppColors.colorThird,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        child: Column(
          spacing: 10.h,
          children: [
            ServiceInfoRowWidget(isDarkPrice: isFreelance, serviceInfo: model),
            AddProductWidget(
              isFreelance: isFreelance,
              model: model,
            ),
          ],
        ),
      ),
    );
  }
}
