import 'package:my_salon/core/assets/app_image.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/featchers/auth/presentation/page/select_location_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeBackPage extends StatefulWidget {
  const WelcomeBackPage({super.key});

  @override
  State<WelcomeBackPage> createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();

    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  Future<void> _onSlideComplete(BuildContext context) async {
    _rotationController.forward(from: 0);

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => SelectLocationPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          AppImage.welcome,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  text: "Welcome Back to\n".tr(),
                  style: AppTextStyles.c45w400Meditative
                      .copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Salon".tr(),
                      style: AppTextStyles.c45w400Meditative.copyWith(
                        color: Colors.white,
                        letterSpacing: 7.w,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text.rich(
                TextSpan(
                  text: "Let us add a magical touch to".tr(),
                  style: AppTextStyles.c20w400.copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                      text: " your beauty".tr(),
                      style:
                          AppTextStyles.c20w700.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: SlideAction(
                  text: "",
                  borderRadius: 25.r,
                  elevation: 0.5,
                  outerColor: const Color.fromARGB(54, 255, 247, 243),
                  innerColor: AppColors.colorSecondary,
                  textStyle: AppTextStyles.white14w700,
                  sliderButtonIcon: Row(
                    children: [
                      Text(
                        "Swipe to Continue".tr(),
                        style: AppTextStyles.white14w700,
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onSubmit: () => _onSlideComplete(context),
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ]),
    );
  }
}
