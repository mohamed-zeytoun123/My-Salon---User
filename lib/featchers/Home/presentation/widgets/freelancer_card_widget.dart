import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
import 'package:my_salon/featchers/Home/data/model/services_all_provider_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreelancerCardWidget extends StatelessWidget {
  final ServicesAllProviderModelDUMMY freelancer;

  const FreelancerCardWidget({
    super.key,
    required this.freelancer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => FrelanceProfilePage())),
      child: Container(
        width: 115.w,
        height: 182.h,
        decoration: BoxDecoration(
          color: const Color(0xffFFF9F9),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r
              ),
              child: SizedBox(
                height: 118.h,
                width: double.infinity,
                child: Image.network(
                  freelancer.appImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: Column(
                spacing: 2.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    freelancer.name,
                    style: AppTextStyles.whit12w400.copyWith(
                      color: Color(0xff43152A),
                    ),
                  ),
                  Text(
                    freelancer.subtitle,
                    style: AppTextStyles.white11w400.copyWith(
                      color: const Color(0xff89274F),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff89274F),
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                  RatingStarsWidget(rating: freelancer.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
