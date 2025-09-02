import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Home_page.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Nearest_Suppliers_Page.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyContent extends StatelessWidget {
  final int currentIndex;

  const BodyContent({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(remot: appLocator<HomeRemoteDataSource>()),
      child: Builder(
        builder: (context) {
          final List<Widget> pages = [
            HomePage(),
            NearestSuppliersPage(),
            AllAppointmentPage(),
            MyOrderPage(),
            MyProfilePage(),
          ];

          return IndexedStack( 
            index: currentIndex,
            children: pages,
          );
        },
      ),
    );
  }
}
