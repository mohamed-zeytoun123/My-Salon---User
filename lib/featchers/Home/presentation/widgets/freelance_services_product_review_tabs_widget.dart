import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/about_tap_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Product_List_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Tap_Review_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services_List_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreelanceServicesProductReviewTabsWidget extends StatefulWidget {
  const FreelanceServicesProductReviewTabsWidget({
    super.key,
  });

  @override
  State<FreelanceServicesProductReviewTabsWidget> createState() =>
      _FreelanceServicesProductReviewTabsWidgetState();
}

class _FreelanceServicesProductReviewTabsWidgetState
    extends State<FreelanceServicesProductReviewTabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
          indicatorWeight: 4.w,
          labelColor: Color.fromARGB(255, 82, 24, 47),
          labelStyle: AppTextStyles.c24w400Meditative.copyWith(fontSize: 17),
          unselectedLabelColor: const Color(0xffA4A4A4),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color.fromARGB(255, 82, 24, 47),
          tabs: [
            Tab(text: "About".tr()),
            Tab(text: "Services".tr()),
            Tab(text: "Product".tr()),
            Tab(text: "Review".tr()),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              AboutTapWidget(),
              ServicesListWidget(isFreelance: true),
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
