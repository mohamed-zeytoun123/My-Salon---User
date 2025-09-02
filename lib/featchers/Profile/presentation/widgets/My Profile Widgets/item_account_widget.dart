import 'dart:developer';
import 'package:my_salon/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/wallet_page.dart';
import 'package:my_salon/featchers/Payment/presentation/pages/payment_method_page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/edit_profile_page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/favorite_page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:my_salon/featchers/auth/presentation/page/select_location_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemAccountWidget extends StatelessWidget {
  const ItemAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account".tr(),
              style: AppTextStyles.white24w400Meditative.copyWith(
                color: Color(0xff43152A),
              ),
            ),
            CustomBorderButtonWidget(
                text: "Edit Profile",
                onTap: () {
                  log("Edit Profile");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()));
                }),
            CustomBorderButtonWidget(
                text: "Billing & Payments",
                onTap: () {
                  log("Billing & Payments");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentMethodPage()));
                }),
            CustomBorderButtonWidget(
                text: "My Orders",
                onTap: () {
                  log("My Orders");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyOrderPage()));
                }),
            CustomBorderButtonWidget(
                text: "Loyalty Points",
                onTap: () {
                  log("Loyalty Points");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoyaltyPointsPage()));
                }),
            CustomBorderButtonWidget(
                text: "Saved",
                onTap: () {
                  log("Saved");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FavoritePage()));
                }),
            CustomBorderButtonWidget(
                text: "Wallet",
                onTap: () {
                  log("Wallet");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WalletPage()));
                }),
            CustomBorderButtonWidget(
              text: "My Location",
              onTap: () {
                log("My Location");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectLocationPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
