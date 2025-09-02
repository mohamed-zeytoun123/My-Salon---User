// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardMethodPaymentOfWalletWidget extends StatelessWidget {
  const CardMethodPaymentOfWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        splashColor: Colors.black.withOpacity(0.2),
        highlightColor: Colors.black.withOpacity(0.1),
        onTap: () {
          log("Wallet");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WalletPage()));
        },
        child: Ink(
          height: 56.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: Color(0xFFE3E3E3),
              width: 1.w,
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 8.w,
                  children: [
                    SizedBox(
                      height: 56.h,
                      width: 56.w,
                      child: Image.asset(AppIcon.wallet, fit: BoxFit.contain),
                    ),
                    Text(
                      "Wallet".tr(),
                      style: AppTextStyles.whit16w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
