import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:my_salon/core/assets/app_image.dart';

import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';

class ButtonSendShowDialogWidget extends StatefulWidget {
  const ButtonSendShowDialogWidget({super.key});

  @override
  State<ButtonSendShowDialogWidget> createState() =>
      _ButtonSendShowDialogWidgetState();
}

class _ButtonSendShowDialogWidgetState
    extends State<ButtonSendShowDialogWidget> {
  final PhoneController controllerNumber = PhoneController();

  @override
  void dispose() {
    controllerNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButtonColorMainWidget(
        width: 297,
        hight: 56,
        label: "Send",
        onPressed: () {
          Navigator.pop(context);
          log("Send");
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: AppColors.colorThird,
              child: SizedBox(
                height: 589.h,
                width: 369.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 20.h,
                  ),
                  child: Column(
                    spacing: 10.h,
                    children: [
                      SizedBox(
                        width: 81.w,
                        height: 81.h,
                        child: Image(
                          image: AssetImage(AppImage.giftfriendbig),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Gift For a friend".tr(),
                        style: AppTextStyles.whit24w700
                            .copyWith(color: Color(0xff2A2A2A)),
                      ),
                      InputPhoneNumberWidget(
                        controller: controllerNumber,
                      ),
                      TextButtonColorMainWidget(
                          width: 297,
                          hight: 56,
                          label: "Send",
                          onPressed: () {
                            log("Send");
                          }),
                      TextButtonWhiteWidget(
                          width: 297,
                          hight: 56,
                          buttonColor: AppColors.colorThird,
                          borderColor: Color(0xff4A172E),
                          appTextStyles: AppTextStyles.black16w700
                              .copyWith(color: Color(0xff4A172E)),
                          label: "Cancel",
                          onPressed: () {
                            log("Cancel");
                          }),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
