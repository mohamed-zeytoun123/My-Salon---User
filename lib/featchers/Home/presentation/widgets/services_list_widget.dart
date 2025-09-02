import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/service_card_with_add_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesListWidget extends StatelessWidget {
  const ServicesListWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        itemBuilder: (context, index) {
          return ServiceCardWithAddButtonWidget(
            isFreelance: isFreelance,
            model: DummyData.servicesListDUMMY[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: DummyData.servicesListDUMMY.length);
  }
}
