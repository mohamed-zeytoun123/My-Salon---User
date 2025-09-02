import 'dart:developer';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_country_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Input_email_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_gender_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_name_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/app/manager/app_manager_state.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Label_Form_Widget.dart';

class CustomTextFieldColumnWidget extends StatefulWidget {
  const CustomTextFieldColumnWidget({
    required final Function(TextEditingController) onController,
    super.key,
  });

  @override
  State<CustomTextFieldColumnWidget> createState() =>
      _CustomTextFieldColumnWidgetState();
}

class _CustomTextFieldColumnWidgetState
    extends State<CustomTextFieldColumnWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PhoneController phoneController = PhoneController();
  TextEditingController countryController = TextEditingController();

  GenderEnum? selectedGender;

  bool _initialized = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    countryController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final appState = context.read<AppManagerCubit>().state;

    if (!_initialized && appState.authResponseModel != null) {
      nameController.text = appState.authResponseModel!.user.name;
      emailController.text = appState.authResponseModel!.user.email;
      if (appState.myLoc != null) {
        countryController.text = appState.myLoc!;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _initializePhone(appState.authResponseModel!.user.phone);
      });

      // final genderStr = appState.authResponseModel!.user.gender!.toLowerCase();
      // if (genderStr == "male") {
      //   selectedGender = GenderEnum.male;
      // } else if (genderStr == "female") {
      //   selectedGender = GenderEnum.female;
      // }

      _initialized = true;
    }
  }

  Future<void> _initializePhone(String phone) async {
    try {
      // ignore: await_only_futures
      final parsedPhone = await PhoneNumber.parse(phone);
      if (!mounted) return;
      setState(() {
        phoneController = PhoneController(initialValue: parsedPhone);
      });
    } catch (e) {
      log("Error parsing phone number: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, appState) {
      return Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFormWidget(label: 'User name'),
          InputNameWidget(
            controller: nameController,
            hintText: "User Name",
            width: double.infinity,
          ),
          LabelFormWidget(label: 'Email'),
          InputEmailWidget(
            controller: emailController,
            hintText: "User @ gmail . com",
            width: double.infinity,
          ),
          LabelFormWidget(label: 'Phone Number'),
          InputPhoneNumberWidget(controller: phoneController),
          LabelFormWidget(label: 'Gender'),
          InputGenderWidget(
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
              // context.read<AuthCubit>().updateGender(value);
            },
          ),
          // InputGenderWidget(
          //   selectedGender: selectedGender,
          //   onChanged: (gender) {
          //     setState(() {
          //       selectedGender = gender;
          //     });
          //     log("Selected Gender: $gender");
          //   },
          //   width: double.infinity,
          // ),
          LabelFormWidget(label: 'Country'),
          InputCountryWidget(
              controller: countryController, hintText: "User Country")
        ],
      );
    });
  }
}
