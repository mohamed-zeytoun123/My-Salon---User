import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/assets/app_image.dart';
import 'package:flutter/material.dart';

class TrackOnMapPage extends StatelessWidget {
  const TrackOnMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(title: "Track on Map"),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            AppImage.map,
            fit: BoxFit.cover,
          ),
        ));
  }
}
