import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Information_User_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Account_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_More_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Settings_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorThird,
        appBar: CustomAppBarWidget(title: "My Profile", isShowBackArrow: false),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
            child: Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InformationUserWidget(),
                ItemAccountWidget(),
                ItemSettingsWidget(),
                ItemMoreWidget(),
              ],
            ),
          ),
        ));
  }
}
