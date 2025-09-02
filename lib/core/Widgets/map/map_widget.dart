import 'package:my_salon/core/Widgets/map/manager/map_cubit.dart';
import 'package:my_salon/core/Widgets/map/manager/map_state.dart';
import 'package:my_salon/featchers/auth/presentation/page/login_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:my_salon/core/colors/app_colors.dart';

class MapWidget extends StatefulWidget {
  final bool showNearbyPoints;
  const MapWidget({
    super.key,
    required this.showNearbyPoints,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final MapController _mapController = MapController();
  final LatLng defaultCenter = const LatLng(33.5138, 36.2765);

  @override
  void initState() {
    super.initState();
    context.read<MapCubit>().getCurrentLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapCubit, MapState>(
      listener: (context, state) {
        if (state.currentLocation != null) {
          _mapController.move(state.currentLocation!, 15);
        }
      },
      child: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          return Stack(
            children: [
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  initialCenter: state.currentLocation ?? defaultCenter,
                  initialZoom: 12,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://a.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png",
                    userAgentPackageName: 'com.example.salon',
                  ),
                  if (state.currentLocation != null)
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: state.currentLocation!,
                          width: 30.w,
                          height: 30.h,
                          child: CircleAvatar(
                            backgroundColor: AppColors.colorSecondary,
                            child: Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 17.sp,
                            ),
                          ),
                        ),
                        if (widget.showNearbyPoints)
                          ...state.listFreelancer.map((point) => Marker(
                                point: point,
                                width: 40.w,
                                height: 40.h,
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 35.sp,
                                ),
                              )),
                      ],
                    ),
                ],
              ),

              // Loader
              if (state.currentLocation == null &&
                  state.isShowNoConnection == false)
                const Center(child: CircularProgressIndicator()),

              // Overlay عند انقطاع الاتصال
              if (state.isShowNoConnection && state.currentLocation == null)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(206, 255, 82, 82),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                          (route) => false,
                        );
                      },
                      child: Text("Skip".tr()),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
