import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/provider_show_image_name_dis_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WProviderInfoTileWidget extends StatelessWidget {
  const WProviderInfoTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: double.infinity,
      height: 74.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding:  EdgeInsets.only(left: 10.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: ProviderShowImageNameDisWidget(
              image: 'https://picsum.photos/124/86?random=165',
              name: "Provider Name",
              discription: "Skin Care Specialist",
            ),
          ),
          TextButtonWhiteWidget(
            width: 108,
            hight: 39,
            label: "View Profile",
            buttonColor: AppColors.colorThird,
            onPressed: () {
              log("View Profile");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrelanceProfilePage()),
              );
            },
            borderColor: Color(0xffE3E3E3),
            appTextStyles:
                AppTextStyles.white13w400.copyWith(color: Color(0XFF000000)),
          ),
        ],
      ),
    );
  }
}
