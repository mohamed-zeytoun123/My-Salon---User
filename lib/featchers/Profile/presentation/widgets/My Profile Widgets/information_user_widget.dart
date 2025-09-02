// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/app/manager/app_manager_state.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationUserWidget extends StatelessWidget {
  final bool isDisplayColumn;
  const InformationUserWidget({
    super.key,
    this.isDisplayColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    return isDisplayColumn
        ? BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (context, appState) {
            final userNumber =
                appState.authResponseModel?.user.phone ?? "Unknow".tr();
            final userName =
                appState.authResponseModel?.user.name ?? "User Name".tr();
            // ignore: unused_local_variable
            final userImage = appState.authResponseModel?.user.image;
            return Column(
              spacing: 5.h,
              children: [
                CircleAvatar(
                  radius: 49.5.r,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/124/86?random=100"),
                  //           userImage != null
                  // ? NetworkImage(userImage)
                  // : AssetImage("assets/images/default_profile.png") as ImageProvider,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: AppTextStyles.white24w400Meditative.copyWith(
                        color: Color(0xff383838),
                      ),
                    ),
                    Text(
                      userNumber,
                      style: AppTextStyles.whit12w400.copyWith(
                        color: Color(0xff666666),
                      ),
                    ),
                  ],
                )
              ],
            );
          })
        : BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (context, appState) {
            final userNumber =
                appState.authResponseModel?.user.phone ?? "Unknow".tr();
            final userName =
                appState.authResponseModel?.user.name ?? "User Name".tr();
            // ignore: unused_local_variable
            final userImage = appState.authResponseModel?.user.image;
            return Row(
              spacing: 10.w,
              children: [
                CircleAvatar(
                  radius: 49.5.r,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/124/86?random=100"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: AppTextStyles.white24w400Meditative.copyWith(
                        color: Color(0xff383838),
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            blurRadius: 4.r,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      userNumber,
                      style: AppTextStyles.whit12w400.copyWith(
                        color: Color(0xff666666),
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            blurRadius: 4.r,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            );
          });
    //* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  }
}
