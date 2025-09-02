import 'package:my_salon/core/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const CustomBottomNavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors .colorThird,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTabTapped,
      selectedItemColor: Color(0xffA64D79),
      unselectedItemColor: Color.fromARGB(103, 0, 0, 0),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home".tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'Explore'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Bookings'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel_outlined),
          label: 'Order'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profile'.tr(),
        ),
      ],
    );
  }
}
