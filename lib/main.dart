import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/Widgets/base/splash_screen_page.dart';
import 'package:my_salon/core/app/local/app_local_data_source.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/service/storage/hivi_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initHive();
  await appInitDependencies();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppManagerCubit(
        local: appLocator<AppLocalDataSource>(),
      )..getCachedUserDataAppState(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home:
                //?------------------------------------------------------------
                //     Builder(
                //   builder: (context) {
                //     final userData =
                //         context.read<AppManagerCubit>().state.authResponseModel;

                //     if (userData != null  ) {
                //           ret
                //     }
                //   },
                // ),
                //?------------------------------------------------------------

                SplashScreenPage()
            //     Center(
            //   child: InputImageWidget(
            //     onImagePicked: (image) {
            //       log(image.toString());
            //     },
            //   ),
            // )
            // const Scaffold(body: Center(child: Text('Mohamed'))), //! test
            //?------------------------------------------------------------
            ),
      ),
    );
  }
}
