import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/tap_review_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services_List_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/product_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderServicesProductReviewTabsWidget extends StatefulWidget {
  const ProviderServicesProductReviewTabsWidget({
    super.key,
  });

  @override
  State<ProviderServicesProductReviewTabsWidget> createState() =>
      _ProviderServicesProductReviewTabsWidgetState();
}

class _ProviderServicesProductReviewTabsWidgetState
    extends State<ProviderServicesProductReviewTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorWeight: 3.w,
          labelColor: AppColors.colorSecondary,
          labelStyle: AppTextStyles.c24w400Meditative,
          unselectedLabelColor: const Color(0xffA4A4A4),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: AppColors.colorSecondary,
          tabs: [
            Tab(text: "Services".tr()),
            Tab(text: "Product".tr()),
            Tab(text: "Review".tr()),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ServicesListWidget(isFreelance: false),
              ProductListWidget(),
              TapReviewWidget(
                listRate: DummyData.reviewsDUMMY,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
