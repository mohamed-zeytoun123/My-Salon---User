import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'dart:developer';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsSheetWidget extends StatefulWidget {
  const ContactUsSheetWidget({
    super.key,
  });

  @override
  State<ContactUsSheetWidget> createState() => _ContactUsSheetWidgetState();
}

class _ContactUsSheetWidgetState extends State<ContactUsSheetWidget> {
  final TextEditingController textNotificationcontroller =
      TextEditingController();
  @override
  void dispose() {
    textNotificationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 420.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.colorThird,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36.r)),
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 10.h,
              children: [
                Text(
                  "Contact Us".tr(),
                  style: AppTextStyles.white32w400Meditative.copyWith(
                    color: Color(0xff383838),
                  ),
                ),
                Text(
                  "Message".tr(),
                  style: AppTextStyles.whid18w500.copyWith(
                    color: Color(0xff303030),
                  ),
                ),
                InputDottedTextfieldWidget(
                  hintText: "Tell us your message here",
                  controller: textNotificationcontroller,
                  height: 119,
                ),
                SizedBox(height: 70.h),
                Center(
                  child: TextButtonColorMainWidget(
                    width: 280,
                    hight: 46,
                    label: "Send",
                    onPressed: () {
                      log("Sending");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
