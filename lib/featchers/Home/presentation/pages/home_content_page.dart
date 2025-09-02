import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/body_content_widget.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/custom_bottom_nav_bar_widget.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';

import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContentPage extends StatefulWidget {
  const HomeContentPage({super.key});

  @override
  HomeContentPageState createState() => HomeContentPageState();
}

class HomeContentPageState extends State<HomeContentPage> {
  int _currentIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => HomeCubit(remot: appLocator<HomeRemoteDataSource>()),
        child: Scaffold(
          body: BodyContent(currentIndex: _currentIndex),
          bottomNavigationBar: CustomBottomNavBarWidget(
            currentIndex: _currentIndex,
            onTabTapped: _updateIndex,
          ),
        ));
  }
}
