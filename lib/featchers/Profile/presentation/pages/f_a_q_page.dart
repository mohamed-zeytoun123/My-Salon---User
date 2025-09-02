import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Account_List_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Payment_List_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/F_A_Q_Services_List_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "FAQ"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FAQAccountListWidget(),
              FAQPaymentListWidget(),
              FAQServicesListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
