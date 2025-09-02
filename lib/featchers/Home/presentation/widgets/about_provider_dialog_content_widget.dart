import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/About_Service_Provider_Description_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Gallery_Work_Images_List_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Provider_Address_Section_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutProviderDialogContentWidget extends StatelessWidget {
  const AboutProviderDialogContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 787.h,
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        color: AppColors.colorThird,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("About Provider".tr(), style: AppTextStyles.c24w400Meditative),
            AboutServiceProviderDescriptionWidget(),
            Divider(color: const Color.fromARGB(59, 0, 0, 0)),
            GalleryWorkImagesListWidget(),
            Divider(color: const Color.fromARGB(59, 0, 0, 0)),
            ProviderAddressSectionWidget(),
          ],
        ),
      ),
    );
  }
}
