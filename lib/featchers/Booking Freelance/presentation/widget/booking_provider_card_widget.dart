import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingProviderCardWidget extends StatelessWidget {
  const BookingProviderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 119.h,
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
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Company name".tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff383838)),
                  ),
                  RatingStarsWidget(
                    isShowRating: true,
                    rating: 5,
                    sizeStar: 20,
                    titleStyle: AppTextStyles.whit18w400FamiljenGrotesk,
                  ),
                ],
              ),
            ),
            DottedBorder(
              dashPattern: [1, 1],
              color: Color(0xffD9D9D9),
              strokeWidth: 1.w,
              customPath: (size) {
                return Path()
                  ..moveTo(0, 0)
                  ..lineTo(size.width, 0);
              },
              child: SizedBox(
                width: double.infinity,
                height: 1.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5.w,
                    children: [
                      CircleAvatar(
                        radius: 19.5.r,
                        backgroundImage: NetworkImage(
                          "https://picsum.photos/124/86?random=165",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Provider Name".tr(),
                            style: AppTextStyles.whit12w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          Text(
                            "Skin Care Specialist".tr(),
                            style: AppTextStyles.whit10w400
                                .copyWith(color: Color(0xff666666)),
                          ),
                        ],
                      ),
                    ],
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
                        MaterialPageRoute(
                            builder: (context) => FrelanceProfilePage()),
                      );
                    },
                    borderColor: Color(0xffE3E3E3),
                    appTextStyles: AppTextStyles.white13w400
                        .copyWith(color: Color(0XFF000000)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
