// ignore_for_file: file_names

import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/assets/app_image.dart';

import 'package:flutter/material.dart';

class NearestSuppliersPage extends StatelessWidget {
  const NearestSuppliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: "Nearest Suppliers",
        isShowBackArrow: false,
      ),
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                AppImage.map,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
