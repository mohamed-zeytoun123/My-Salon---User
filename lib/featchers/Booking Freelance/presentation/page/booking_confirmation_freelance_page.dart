import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Booking_Time_And_Date_Selector_Section_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/booking_provider_card_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingConfirmationFreelancePage extends StatelessWidget {
  const BookingConfirmationFreelancePage({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      body: SingleChildScrollView(
        child: Column(
          spacing: 5.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookingProviderCardWidget(),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 30.h),
              child: Column(
                spacing: 5.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Time & Date".tr(),
                    style: AppTextStyles.c24w400Meditative
                        .copyWith(color: Color(0xff383838)),
                  ),
                  Text(
                    "Choose the  date".tr(),
                    style: AppTextStyles.whit16w700
                        .copyWith(color: Color(0xff303148)),
                  ),
                  BookingTimeAndDateSelectorSectionWidget(
                    price: price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
