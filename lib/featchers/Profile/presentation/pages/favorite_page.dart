import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
          title: Text(
            "Favorite".tr(),
            style: AppTextStyles.c28w400Meditative.copyWith(
              color: const Color(0xff000000),
            ),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Column(
              children: [
                Divider(color: Color(0xffD9D9D9), thickness: 1.0, height: 1.h),
                TabBar(
                  unselectedLabelStyle: AppTextStyles.white24w400Meditative
                      .copyWith(color: Color(0xff4A172E)),
                  labelStyle: AppTextStyles.white24w400Meditative
                      .copyWith(color: Color(0xff4A172E)),
                  indicatorColor: Color(0xFF4E1830),
                  indicatorWeight: 3.w,
                  labelColor: Color(0xFF4E1830),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "All".tr()),
                    Tab(text: "Services".tr()),
                    Tab(text: "Product".tr()),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: AppColors.colorThird,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            spacing: 10.h,
            children: [
              RowSearchFilterWidget(),
              Expanded(
                child: const TabBarView(
                  children: [
                    FavoriteAllPage(),
                    FavoriteServicesPage(),
                    FavoriteProductPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteAllPage extends StatelessWidget {
  const FavoriteAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("All", style: TextStyle(fontSize: 24)));
  }
}

class FavoriteServicesPage extends StatelessWidget {
  const FavoriteServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Services", style: TextStyle(fontSize: 24)));
  }
}

class FavoriteProductPage extends StatelessWidget {
  const FavoriteProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Product", style: TextStyle(fontSize: 24)));
  }
}
