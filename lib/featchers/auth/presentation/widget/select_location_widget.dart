import 'dart:developer';
import 'package:my_salon/core/Widgets/map/manager/map_cubit.dart';
import 'package:my_salon/core/Widgets/map/manager/map_state.dart';
import 'package:my_salon/core/Widgets/map/local/map_local_data_source.dart';
import 'package:my_salon/core/Widgets/map/map_widget.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/auth/presentation/page/login_page.dart';
import 'package:latlong2/latlong.dart';

class SelectLocationWidget extends StatelessWidget {
  const SelectLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapCubit(local: appLocator<MapLocalDataSource>()),
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: MapWidget(showNearbyPoints: false),
          ),
          // if (!context.read<MapCubit>().state.isShowNoConnection)

          BlocSelector<MapCubit, MapState, LatLng?>(
            selector: (state) {
              return state.currentLocation;
            },
            builder: (context, state) {
              if (state != null) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10.r),
                          onTap: () {
                            log("Alignment");
                          },
                          child: Container(
                            width: 52.w,
                            height: 52.h,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.my_location_sharp,
                              color: Colors.black,
                              size: 30.r,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      TextButtonColorMainWidget(
                        width: 343,
                        label: "Confirm Location",
                        onPressed: () {
                          final newLocation =
                              context.read<MapCubit>().state.currentLocation;
                          if (newLocation != null) {
                            context
                                .read<MapCubit>()
                                .changeCurrLocation(newLocation);
                          }
                          log(newLocation.toString());

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        hight: 56,
                      ),
                      SizedBox(height: 60.h)
                    ],
                  ),
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
