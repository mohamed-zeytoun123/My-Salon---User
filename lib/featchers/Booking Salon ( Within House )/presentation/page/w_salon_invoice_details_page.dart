import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Card_Details_Provider_Service_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/expandable_service_price_tile.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/input_promo_code_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/location_change_tile_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/loyalty_points_redeem_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/static_price_delivery_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Dialog_Want_To_Pay_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WSalonInvoiceDetailsPage extends StatelessWidget {
  const WSalonInvoiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Invoice details"),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: Column(
            spacing: 15.h,
            children: [
              LocationChangeTileWidget(),
              CardDetailsProviderServiceWidget(),
              InputPromoCodeWidget(),
              LoyaltyPointsRedeemWidget(),
              ExpandableServicePriceTile(items: DummyData.invoiceListDUMMY),
              StaticPriceDeliveryWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding:  EdgeInsets.only(left: 15.w, right: 15.w, bottom: 40.h),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButtonWhiteWidget(
              width: 250,
              hight: 56,
              label: "Continue to Payment",
              borderColor: const Color(0xffE3E3E3),
              appTextStyles: AppTextStyles.white16w700.copyWith(
                color: AppColors.colorThird,
              ),
              buttonColor: const Color(0xff3E0C0C),
              onPressed: () {
                log("Continue to Payment");
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: DialogWantToPayWidget(),
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total".tr(),
                  style: AppTextStyles.white14w400.copyWith(
                    color: const Color(0xff515151),
                  ),
                ),
                Text(
                  "188 \$".tr(),
                  style: AppTextStyles.whit24w700.copyWith(
                    color: const Color(0xff383838),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
