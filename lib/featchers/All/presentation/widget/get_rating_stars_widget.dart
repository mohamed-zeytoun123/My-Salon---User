import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetRatingStarsWidget extends StatefulWidget {
  final double initialRating;
  final Function(double) onRatingSelected;
  final double starSize;

  const GetRatingStarsWidget({
    super.key,
    required this.initialRating,
    required this.onRatingSelected,
    this.starSize = 30,
  });

  @override
  State<GetRatingStarsWidget> createState() => _RatingStarsWidgetState();
}

class _RatingStarsWidgetState extends State<GetRatingStarsWidget> {
  double _selectedRating = 0;
  final Color starColor = Color(0xffFFAC50);

  @override
  void initState() {
    super.initState();
    _selectedRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () => _setRating(index + 1),
          child: Icon(
            _selectedRating > index ? Icons.star : Icons.star_border,
            size: widget.starSize.sp,
            color: starColor,
          ),
        );
      }),
    );
  }

  void _setRating(double rating) {
    setState(() => _selectedRating = rating);
    widget.onRatingSelected(rating);
  }
}
