import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_salon/core/Widgets/base/logo_widget.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';
import 'package:my_salon/featchers/auth/presentation/page/welcome_back_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    final userData = context.read<AppManagerCubit>().state.authResponseModel;

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat(reverse: true);

    _scaleAnimation =
        Tween<double>(begin: 0.9, end: 1.1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    Future.delayed(const Duration(seconds: 5), () {
      if (userData != null) {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const HomeContentPage()),
        );
      } else {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const WelcomeBackPage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA64D79),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.colorMain),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ScaleTransition(
                scale: _scaleAnimation,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child: LogoWidget(width: 100, height: 100)),
              ),
              SizedBox(height: 30.h),
              Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.pinkAccent,
                child: Text(
                  "SALON".tr(),
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3.w,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Loading...".tr(),
                    style: TextStyle(fontSize: 18.sp, color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
