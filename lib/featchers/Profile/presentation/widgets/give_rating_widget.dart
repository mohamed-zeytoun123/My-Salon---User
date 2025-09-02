import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/All/presentation/widget/get_rating_stars_widget.dart';
import 'package:my_salon/featchers/Home/data/model/rating_base_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiveRatingWidget extends StatefulWidget {
  const GiveRatingWidget({super.key});

  @override
  State<GiveRatingWidget> createState() => _GiveRatingWidgetState();
}

class _GiveRatingWidgetState extends State<GiveRatingWidget> {
  double _value = 5;

  @override
  Widget build(BuildContext context) {
    final RatingBase ratingBase = RatingBase(rating: _value);

    return Column(
      children: [
        SizedBox(
          width: 300.w,
          child: GetRatingStarsWidget(
            starSize: 50,
            initialRating: 5,
            onRatingSelected: (value) {
              log("$value");
              setState(() {
                _value = value;
              });
            },
          ),
        ),
        Text(
          ratingBase.ratingDescription,
          style: AppTextStyles.whid18w700.copyWith(color: Color(0xff565656)),
        ),
      ],
    );
  }
}
