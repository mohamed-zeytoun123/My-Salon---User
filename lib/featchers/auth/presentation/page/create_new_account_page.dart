import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:my_salon/featchers/auth/presentation/widget/sign_up_actions_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/sign_up_form_widget.dart';

class CreateNewAccountPage extends StatefulWidget {
  const CreateNewAccountPage({super.key});

  @override
  State<CreateNewAccountPage> createState() => _CreateNewAccountPageState();
}

class _CreateNewAccountPageState extends State<CreateNewAccountPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final phoneNumberController = PhoneController(
    initialValue: const PhoneNumber(
      isoCode: IsoCode.SY,
      nsn: "9XXXXXXXX",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(repository: appLocator<AuthRepostory>()),
      child: Scaffold(
        
        body: BackgroundColorPages(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 52.h, left: 18.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<AuthCubit>().updateImage(null);
                      context.read<AuthCubit>().updateGender(null);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BottomSheetWidget(
                  height: 827,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 5.h),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.h,
                          children: [
                            SignUpFormWidget(
                              fullNameController: fullNameController,
                              emailController: emailController,
                              phoneNumberController: phoneNumberController,
                              passwordController: passwordController,
                              confirmPasswordController:
                                  confirmPasswordController,
                            ),
                            SignUpActionsWidget(
                                formKey: _formKey,
                                fullNameController: fullNameController,
                                emailController: emailController,
                                phoneNumberController: phoneNumberController,
                                passwordController: passwordController,
                                confirmPasswordController:
                                    confirmPasswordController),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
