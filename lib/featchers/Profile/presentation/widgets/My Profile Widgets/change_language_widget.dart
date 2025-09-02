import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguageWidget extends StatelessWidget {
  const ChangeLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocale =
        context.watch<AppManagerCubit>().state.appLocale ?? context.locale;
    //* I don't can use wathc because watch going to refresh all widget

    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      height: 55.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E3E3), width: 2.w),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'language'.tr(),
            style:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
          DropdownButton<Locale>(
            value: appLocale,
            underline: const SizedBox(),
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                context.setLocale(newLocale);
                context.read<AppManagerCubit>().changeLocale(newLocale);
              }
            },
            items: const [
              DropdownMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: Locale('ar'),
                child: Text('العربية'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
