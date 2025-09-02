import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRatingWidget extends StatelessWidget {
  final RateProductDetailsModelDUMMY model;

  const UserRatingWidget({
    super.key,
    required this.model,
  });

  Color getRandomColor() {
    final random = Random(model.reviewerName.hashCode);
    return Color.fromARGB(
      255,
      random.nextInt(200) + 30,
      random.nextInt(200) + 30,
      random.nextInt(200) + 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasImage =
        model.reviewerImage != null && model.reviewerImage!.isNotEmpty;
    final firstLetter = model.reviewerName.isNotEmpty
        ? model.reviewerName[0].toUpperCase()
        : '?';

    return Row(
      spacing: 10.w,
      children: [
        CircleAvatar(
          radius: 24.r,
          backgroundColor: hasImage ? Colors.transparent : getRandomColor(),
          backgroundImage: hasImage ? NetworkImage(model.reviewerImage!) : null,
          child: !hasImage
              ? Text(
                  firstLetter,
                  style: AppTextStyles.whit16w700.copyWith(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                )
              : null,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.reviewerName,
              style: AppTextStyles.whit16w700.copyWith(
                color: const Color(0xff515151),
              ),
            ),
            RatingStarsWidget(
              rating: model.rating,
              sizeStar: 15.sp,
              isShowRating: false,
            ),
            Text(
              model.ratingDescription,
              style: AppTextStyles.f14w400Dosi
                  .copyWith(color: const Color(0xff515151)),
            ),
          ],
        ),
      ],
    );
  }
}
