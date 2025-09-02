// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/featchers/auth/presentation/widget/join_as_partner_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/login_botoom_sheet_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Column(
          children: [
            JoinAsPartnerWidget(),
            LoginBottomSheetWidget(),
          ],
        ),
      ),
    );
  }
}
