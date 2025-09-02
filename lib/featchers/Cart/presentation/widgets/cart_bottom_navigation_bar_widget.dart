import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/cart_invoice_details_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBottomNavigationBarWidget extends StatelessWidget {
  const CartBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
        color: AppColors.colorThird,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          spacing: 5.h,
          children: [
            Divider(
              thickness: 1,
              color: const Color.fromARGB(83, 158, 158, 158),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total".tr(),
                      style: AppTextStyles.whit16w700.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff1E1918),
                      )),
                  Text("\$39.9".tr(),
                      style: AppTextStyles.whit16w700.copyWith(
                        color: Color(0xff1E1918),
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ),
            TextButtonWhiteWidget(
              width: 343,
              hight: 56,
              onPressed: () {
                log("Continue To Payment");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartInvoiceDetailsPage()));
              },
              buttonColor: AppColors.colorSecondary,
              borderColor: AppColors.colorSecondary,
              label: "Continue To Payment",
              appTextStyles: AppTextStyles.black16w700
                  .copyWith(color: AppColors.colorThird),
            )
          ],
        ),
      ),
    );
  }
}
