// ignore_for_file: file_names
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/top_tab_bar_supplienrs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearestFetchPage extends StatelessWidget {
  const NearestFetchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Near Suppliers"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
        child: Column(
          spacing: 20.h,
          children: [
            Expanded(child: TopTabBarSupplienrsWidget()),
          ],
        ),
      ),
    );
  }
}
