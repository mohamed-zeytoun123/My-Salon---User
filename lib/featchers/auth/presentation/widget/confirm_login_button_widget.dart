import 'dart:developer';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/util/response_status_enum.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_state.dart';

class ConfirmLoginButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final PhoneController phoneController;
  final TextEditingController passwordController;

  const ConfirmLoginButtonWidget({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(repository: appLocator<AuthRepostory>()),
      child: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (pre, cur) =>
            cur.loginState == ResponseStatusEnum.success ||
            cur.loginState == ResponseStatusEnum.failure,
        listener: (context, state) {
          if (state.loginState == ResponseStatusEnum.success) {
            FlushbarHelper.showSnackBar(
              context: context,
              message: "You have successfully logged in 😉! Welcome 👋",
              icon: Icons.check_circle,
              backgroundColor: Colors.green,
              iconColor: Colors.white,
              duration: Duration(seconds: 3),
              title: "Success",
            );

            BlocProvider.of<AppManagerCubit>(context)
                .saveUserDataInAppState(state.model!);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeContentPage()),
              (route) => false,
            );
          } else if (state.loginError != null) {
            FlushbarHelper.showFlushbar(
              context: context,
              backgroundColor: Colors.red,
              title: "Error",
              message: state.loginError!.message,
              iconData: Icons.error_outline,
              iconColor: Colors.white,
              sizeIcon: 28.sp,
              mainButtonText: "OK",
              mainButtonOnPressed: () {
                Navigator.pop(context);
              },
              duration: const Duration(seconds: 5),
              isShowProgress: true,
              progressColor: Colors.white,
            );
          }
        },
        buildWhen: (pre, cur) => pre.loginState != cur.loginState,
        builder: (context, state) {
          if (state.loginState == ResponseStatusEnum.loading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return TextButtonColorMainWidget(
                width: 280,
                hight: 46,
                label: "Confirm",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final password = passwordController.text;
                    final phone =
                        "${phoneController.value.countryCode.replaceAll('+', '')}${phoneController.value.nsn}";
                    BlocProvider.of<AuthCubit>(context).login(phone, password);

                    log(" 🔥🔥🔥🔥🔥🔥phoneController = $phone \npasswordController= $password");
                  }
                });
          }
        },
      ),
    );
  }
}
