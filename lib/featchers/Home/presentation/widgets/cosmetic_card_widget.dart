// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/cosmet_providers_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CosmeticCardWidget extends StatelessWidget {
  final CosmeticProvidersModelDUMMY item;
  final BranchModel branch;
  const CosmeticCardWidget({
    super.key,
    required this.item,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 259.w,
      height: 228.h,
      margin:  EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.r,
            offset: Offset(0, 5),
          ),
        ],
        color: Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Stack(
                children: [
                  Image.network(
                    item.appImage,
                    width: double.infinity,
                    height: 137.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 10.w,
                    bottom: 1.h,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xffFFFFFF),
                          size: 20,
                        ),
                        Text(
                          "${item.rating} (${item.reviews} Reviews)".tr(),
                          style: AppTextStyles.whit11w200
                              .copyWith(color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 25.25.w),
            child: Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3.w),
                image: DecorationImage(
                  image: NetworkImage(item.profileImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9.w,
            bottom: 7.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(branch.name,
                    style: AppTextStyles.white14w700
                        .copyWith(color: Color(0xff121212))),
                Text(branch.address.region.name,
                    style: AppTextStyles.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Text(branch.address.region.name ,
                    style: AppTextStyles.whit10w400
                        .copyWith(color: Color(0xff43152A))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
