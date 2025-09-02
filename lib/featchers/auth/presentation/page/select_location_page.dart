import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/featchers/auth/presentation/widget/select_location_widget.dart';

class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: "Select Location",
        isShowBackArrow: false,
      ),
      body: SelectLocationWidget(),
    );
  }
}
