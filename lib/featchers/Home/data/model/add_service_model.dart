// ignore_for_file: file_names

class AddServiceModel {
  final double price;
  final String title;
  int number;

  AddServiceModel({
    required this.title,
    required this.price,
    this.number = 1,
  });
}
