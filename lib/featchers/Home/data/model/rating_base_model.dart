// ignore_for_file: file_names

class RatingBase {
  final double rating;

  RatingBase({required this.rating});

  String get ratingDescription {
    if (rating >= 4.0) {
      return 'Very good';
    } else if (rating >= 3.0 && rating <= 3.9) {
      return 'Good';
    } else if (rating >= 2.0 && rating <= 2.9) {
      return 'Fair';
    } else if (rating >= 0 && rating <= 1.9) {
      return 'Poor';
    } else {
      return 'Unknown';
    }
  }
}
