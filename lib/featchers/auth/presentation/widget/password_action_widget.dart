import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';

class PasswordActionWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const PasswordActionWidget({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        spacing: 50.h,
        children: [
          // TextButtonWhiteWidget(
          //   width: 244,
          //   hight: 44,
          //   label: "Confirmation failed. Please check the number",
          //   onPressed: () {
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(builder: (context) => FailedSuccessPage()),
          //     // );
          //   },
          //   borderColor: Color(0xffF1F1F1),
          //   appTextStyles: AppTextStyles.black17w500SFProDisplayHeavy
          //       .copyWith(fontSize: 9.9),
          // ),
          TextButtonColorMainWidget(
            width: 301,
            hight: 50,
            label: "Create New Password",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeContentPage()),
                  (route) => false,
                );
                log("done");
              }
            },
          ),
        ],
      ),
    );
  }
}
