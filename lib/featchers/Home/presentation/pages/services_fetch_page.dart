import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/top_tab_bar_services_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesFetchPage extends StatelessWidget {
  final ServiceModel model;
  const ServicesFetchPage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBarWidget(title: "${model.name} Services"),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          spacing: 20.h,
          children: [
            Expanded(child: TopTabBarServicesWidget()),
          ],
        ),
      ),
    );
  }
}
