import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final bool isShowBackArrow;

  const CustomAppBarWidget({
    super.key,
    required this.title,
    this.color,
    this.isShowBackArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? Color(0xffFFFFFF),
      leading: isShowBackArrow
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            )
          : null,
      title: Text(
        title.tr(),
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.c28w400Meditative.copyWith(
          color: const Color(0xff000000),
        ),
      ).tr(),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Divider(color: Color(0xffD9D9D9), thickness: 1.0),
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
