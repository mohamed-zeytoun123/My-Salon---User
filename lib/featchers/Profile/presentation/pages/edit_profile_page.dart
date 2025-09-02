import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Custom_Text_Field_Column_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Information_User_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Edit Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: InformationUserWidget(
                    isDisplayColumn: true,
                  ),
                ),
                CustomTextFieldColumnWidget(
                  onController: (controller) {
                    phoneController = controller;
                  },
                ),
                Center(
                  child: TextButtonColorMainWidget(
                      width: 300,
                      hight: 50,
                      label: "Save Edit",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log("Save Edit: Form is valid!");
                        } else {
                          log("Form is invalid!");
                          if (phoneController.text.length < 3) {
                            log("Save Edit: Text is too short");
                          }
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
