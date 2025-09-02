// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/Cosmetic_Item_Model_Dummy.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CosmeticItemServiceCardWidget extends StatelessWidget {
  final CosmeticItemModelDUMMY item;
  final ServiceModel model;

  const CosmeticItemServiceCardWidget({
    super.key,
    required this.item,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: 184.w,
      height: 200.h,
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
            padding: EdgeInsets.only(top: 20.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  Image.network(
                    item.appImage,
                    width: double.infinity,
                    height: 90.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(144, 139, 28, 149),
                            Color(0x2A0A18A1).withOpacity(0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.w,
                    top: 70.h,
                    child: Text(
                      model.branch.provider.type.providerTypeText,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.25.w),
            child: Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3.w),
                image: DecorationImage(
                  image: NetworkImage(item.profileAppImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9.w,
            top: 110.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15.w,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      model.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Color(0xff121212),
                      ),
                    ),
                    Text(
                      "\$${model.price}",
                      style: AppTextStyles.whit12w700
                          .copyWith(color: Color(0xff3E0C0C)),
                    )
                  ],
                ),
                //! اسم المدينة فارغ بلبوست مان مافي 🤷‍♂️🤷‍♂️
                Text("Dubai ${model.branch.address.region.city.name}",
                    style: AppTextStyles.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Row(
                  children: [
                    Image.asset(
                      AppIcon.location,
                      color: Color(0xff000000),
                    ),
                    SizedBox(width: 5.w),
                    Text("${model.branch.distance} km away".tr(),
                        style: AppTextStyles.whit11w700.copyWith(
                          color: Color(0xff000000),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff000000),
                          decorationThickness: 3,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Color(0xff000000),
                      size: 20.sp,
                    ),
                    Text(
                      "${item.rating} (${item.reviewsCount} Reviews)".tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 11.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
