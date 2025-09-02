import 'package:my_salon/featchers/Home/data/model/rating_base_model.dart';

class RateProductDetailsModelDUMMY extends RatingBase {
  final String ? reviewerImage;
  final String reviewerName;

  RateProductDetailsModelDUMMY({
     this.reviewerImage,
    required this.reviewerName,
    required super.rating,
  });
}
