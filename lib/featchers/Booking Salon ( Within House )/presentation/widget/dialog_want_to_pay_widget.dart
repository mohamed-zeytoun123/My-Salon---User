import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_integer_value_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogWantToPayWidget extends StatefulWidget {
  const DialogWantToPayWidget({super.key});

  @override
  State<DialogWantToPayWidget> createState() => _DialogWantToPayWidgetState();
}

class _DialogWantToPayWidgetState extends State<DialogWantToPayWidget> {
  bool isdisplaywidget = true;
  late DateTime selectedDate;
  late String monthName;

  TextEditingController controller = TextEditingController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isdisplaywidget) {
      return Container(
        width: 369.w,
        height: 259.h,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: AppColors.colorThird,
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          spacing: 25.h,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Want To Pay By".tr(),
              style:
                  AppTextStyles.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            Column(
              spacing: 10.h,
              children: [
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Electronic payment",
                  borderColor: const Color(0xffE3E3E3),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: AppColors.colorThird),
                  buttonColor: const Color(0xff3E0C0C),
                  onPressed: () {
                    log("Electronic payment");
                  },
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Wallet ",
                  borderColor: const Color(0xff3E0C0C),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: AppColors.colorThird,
                  onPressed: () {
                    log("Wallet");
                    setState(() {
                      isdisplaywidget = false;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        width: 369.w,
        height: 377.h,
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
            color: AppColors.colorThird,
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          spacing: 25.h,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Payment By Wallet".tr(),
              style:
                  AppTextStyles.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All the amount".tr(),
                  style: AppTextStyles.whit16w400.copyWith(
                    color: Color(0xff515151),
                  ),
                  textAlign: TextAlign.start,
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Payment all the amount",
                  borderColor: const Color(0xff3E0C0C),
                  appTextStyles: AppTextStyles.white13w400
                      .copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: Color(0xffF6F6F6),
                  onPressed: () {
                    log("Payment all the amount");
                  },
                ),
                Row(
                  spacing: 5.w,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xffEBEBEB),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "or".tr(),
                      style: AppTextStyles.whit16w400
                          .copyWith(color: Color(0xff515151)),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xffEBEBEB),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                Text(
                  "A certain amount".tr(),
                  style: AppTextStyles.whit16w400.copyWith(
                    color: Color(0xff515151),
                  ),
                  textAlign: TextAlign.start,
                ),
                InputIntegerValueWidget(
                  controller: controller,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                      width: 115,
                      hight: 45,
                      label: "Cancel",
                      borderColor: const Color.fromARGB(132, 227, 227, 227),
                      appTextStyles: AppTextStyles.white16w700
                          .copyWith(color: Color(0xff1A1A1A)),
                      buttonColor: AppColors.colorThird,
                      onPressed: () {
                        log("Cancel");
                        Navigator.pop(context);
                      },
                    ),
                    TextButtonWhiteWidget(
                      width: 115,
                      hight: 45,
                      label: "Payment",
                      borderColor: const Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white16w700
                          .copyWith(color: AppColors.colorThird),
                      buttonColor: const Color(0xff3E0C0C),
                      onPressed: () {
                        log("Payment");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WalletPage()));
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }
  }
}
