import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GalleryWorkImagesListWidget extends StatelessWidget {
  const GalleryWorkImagesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Column(
        spacing: 10.h,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gallery Work".tr(),
            style: AppTextStyles.white14w700.copyWith(color: Color(0xff000000)),
          ),
          SizedBox(
            height: 97.h,
            width: double.infinity,
            child: ListView.separated(
                padding: EdgeInsets.only(right: 10.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 102.w,
                    height: 97.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.network(
                        DummyData.galleryWorkImagesDUMMY[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: DummyData.galleryWorkImagesDUMMY.length),
          )
        ],
      ),
    );
  }
}
