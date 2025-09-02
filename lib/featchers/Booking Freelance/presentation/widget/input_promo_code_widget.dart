// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPromoCodeWidget extends StatefulWidget {
  const InputPromoCodeWidget({super.key});

  @override
  State<InputPromoCodeWidget> createState() => _InputPromoCodeWidgetState();
}

class _InputPromoCodeWidgetState extends State<InputPromoCodeWidget> {
  final _formKey = GlobalKey<FormState>();
  final _promoCodeController = TextEditingController();

  @override
  void dispose() {
    _promoCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _promoCodeController,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return "Please enter a promo code.".tr();
          }
          if (value.length < 4) {
            return "Promo code is too short.".tr();
          }
          return null;
        },
        decoration: TextFormFieldStyle.baseForm(
          "Promo code...",
          AppTextStyles.white14w700.copyWith(
            color: Color(0xffA0A0A0),
            fontStyle: FontStyle.italic,
          ),
        ).copyWith(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.5), width: 2.w),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
            child: TextButtonWhiteWidget(
              width: 90,
              hight: 25,
              label: "Apply",
              borderColor: const Color(0xffE3E3E3),
              appTextStyles: AppTextStyles.whit16w700
                  .copyWith(color: AppColors.colorThird),
              buttonColor: const Color(0xff3E0C0C),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  log("Apply: ${_promoCodeController.text}");
                }
              },
            ),
          ),
        ),
        cursorWidth: 1.5.w,
      ),
    );
  }
}
