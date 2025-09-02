// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Description_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Review_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsWidget extends StatefulWidget {
  final String description;
  final String labelButton;
  final IconData? iconButton;
  final List<RateProductDetailsModelDUMMY> listRate;
  final Color selectedTabColor;
  final Color? buttonColor;
  final Color iconButtonColor;
  final bool isButtonIconFirst;
  final VoidCallback? onPressed;

  const ProductDetailsWidget({
    super.key,
    required this.description,
    required this.listRate,
    required this.selectedTabColor,
    this.buttonColor,
    required this.iconButtonColor,
    required this.isButtonIconFirst,
    required this.labelButton,
    this.iconButton,
    this.onPressed,
  });

  @override
  ProductDetailsWidgetState createState() => ProductDetailsWidgetState();
}

class ProductDetailsWidgetState extends State<ProductDetailsWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonMain = TextButtonColorMainWidget(
      background: widget.buttonColor,
      width: 280,
      hight: 56,
      sizeIcon: 20,
      label: widget.labelButton,
      iconData: widget.iconButton,
      onPressed: widget.onPressed ?? () {},
    );

    Widget buttonIcon = TextButtonWhiteWidget(
      width: 59,
      borderColor: const Color(0xff0000000A),
      hight: 55,
      iconColor: widget.iconButtonColor,
      iconData: Icons.favorite_outline_rounded,
      sizeIcon: 40,
      onPressed: () {},
    );

    return Container(
      color: const Color(0xffFFFFFF),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                controller: tabController,
                indicatorWeight: 3.w,
                labelColor: widget.selectedTabColor,
                unselectedLabelColor: const Color(0xffA4A4A4),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: widget.selectedTabColor,
                labelStyle: AppTextStyles.white24w400Meditative,
                tabs:  [
                  Tab(text: "Description".tr()),
                  Tab(text: "Review".tr()),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    TapDescriptionWidget(description: widget.description),
                    TapReviewWidget(listRate: widget.listRate),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.h
            ,
            left: 0.w,
            right: 0.w,
            child: Row(
              spacing: 5.w,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.isButtonIconFirst) buttonIcon,
                buttonMain,
                if (!widget.isButtonIconFirst) buttonIcon,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
