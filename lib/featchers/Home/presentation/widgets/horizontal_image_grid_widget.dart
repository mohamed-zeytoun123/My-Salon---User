import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source_impl.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/pages/services_fetch_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalImageGridWidget extends StatelessWidget {
  final List<ServiceModel> llistServices;

  final double heightForm;
  final double widthForm;
  final double heightItem;
  final double widthItem;
  final int numItem;
  final bool? is6Item;

  const HorizontalImageGridWidget({
    super.key,
    this.heightForm = 180,
    this.widthForm = double.infinity,
    this.heightItem = 86,
    this.widthItem = 124,
    this.numItem = 3,
    this.is6Item,
    required this.llistServices,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthForm == double.infinity ? double.infinity : widthForm.w,
      height: heightForm.h,
      child: GridView.builder(
        shrinkWrap: true,
        physics: (is6Item ?? false)
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numItem,
          childAspectRatio: widthItem / heightItem,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
        ),
        itemCount: (is6Item ?? false)
            ? llistServices.length
            : (llistServices.length > 6 ? 6 : llistServices.length),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                          value: HomeCubit(
                              remot: HomeRemoteDataSourceImpl(
                                  api: API(dio: Dio()))),
                          child: ServicesFetchPage(
                            model: llistServices[index],
                          ))));
            },
            child: Container(
              width: widthItem,
              height: heightItem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      "https://picsum.photos/124/86?random=$index",
                      // items[index].AppImage,
                      width: widthItem.w,
                      height: heightItem.h,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: widthItem.w,
                        height: 20.h,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(189, 204, 127, 211),
                              Color(0x2A0A18A1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      child: Text(
                        llistServices[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
