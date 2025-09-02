import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Card_Method_Payment_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Card_Method_Payment_Of_Wallet_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Payment", color: AppColors.colorThird),
      backgroundColor: AppColors.colorThird,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 40.h),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            TextButtonWhiteWidget(
              width: 150,
              hight: 56,
              onPressed: () {
                log("chose");
              },
              borderColor: Color(0xffE3E3E3),
              label: "Chose",
              appTextStyles:
                  AppTextStyles.whit16w700.copyWith(color: Color(0xff43152A)),
            ),
            TextButtonWhiteWidget(
              width: 150,
              hight: 56,
              onPressed: () {
                log("Add Another Method");
              },
              borderColor: Color(0xffE3E3E3),
              label: "Add Another Method",
              buttonColor: AppColors.colorThird,
              appTextStyles:
                  AppTextStyles.white14w700.copyWith(color: Color(0xff1A1A1A)),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          spacing: 5.h,
          children: [
            CardMethodPaymentWidget(
                image: AppIcon.visa,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("Expires");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.icon3,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon3");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.icon2,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon2");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.tabby,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("tabby");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.tamara,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("tamara");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.icon1,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("icon1");
                }),
            CardMethodPaymentWidget(
                image: AppIcon.play,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                onTap: () {
                  log("play");
                }),
            CardMethodPaymentOfWalletWidget(),
          ],
        ),
      ),
    );
  }
}
