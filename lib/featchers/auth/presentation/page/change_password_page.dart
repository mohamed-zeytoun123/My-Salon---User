import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/featchers/auth/presentation/widget/change_password_header_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/password_action_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/password_fields_section_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      body: BackgroundColorPages(
        child: Column(
          children: [
            ChangePasswordHeader(),
            Expanded(
              child: BottomSheetWidget(
                  height: 818,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 46.h),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          spacing: 30.h,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PasswordFieldsSection(),
                            PasswordActionWidget(formKey: _formKey)
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
