import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesQuantitySelectorWidget extends StatefulWidget {
  const ServicesQuantitySelectorWidget({
    super.key,
    required this.price,
    required this.onCostChanged,
    required this.addedServices,
    required this.index,
  });

  final int index;
  final List<AddServiceModel> addedServices;
  final double price;
  final void Function(double) onCostChanged;

  @override
  State<ServicesQuantitySelectorWidget> createState() =>
      _ServicesQuantitySelectorWidgetState();
}

class _ServicesQuantitySelectorWidgetState
    extends State<ServicesQuantitySelectorWidget> {
  int _number = 1;
  double _cost = 0;

  @override
  void initState() {
    super.initState();
    _number = widget.addedServices[widget.index].number;
    _cost = _number * widget.price;
  }

  void _updateCost() {
    setState(() {
      _cost = _number * widget.price;

      widget.addedServices[widget.index].number = _number;

      widget.onCostChanged(_cost);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(10.r),
          dashPattern: [3, 2],
          color: Color(0xffD9D9D9),
          strokeWidth: 1.w,
          child: Container(
            width: 276.w,
            height: 55.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Color(0xffD9D9D9),
                  child: IconButton(
                    onPressed: () {
                      if (_number > 1) {
                        setState(() {
                          _number--;
                          _updateCost();
                        });
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Color(0xff3E0C0C),
                      size: 28.sp,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 24.r,
                  ),
                ),
                Text(
                  "$_number".tr(),
                  style: AppTextStyles.whit24w700
                      .copyWith(color: Color(0xff3E0C0C)),
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Color(0xffD9D9D9),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _number++;
                        _updateCost();
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Color(0xff3E0C0C),
                      size: 28.sp,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 24.r,
                  ),
                ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              if (_number != 9) {
                setState(() {
                  double itemCost = _number * widget.price;

                  widget.onCostChanged(-itemCost);

                  widget.addedServices.removeAt(widget.index);

                  log("Service removed, cost deducted: $itemCost");

                  _number = 0;

                  if (widget.addedServices.isEmpty) {
                    Navigator.pop(context);
                  }
                });
              }
              setState(() {});
            },
            borderRadius: BorderRadius.circular(30.r),
            child: Icon(
              size: 50.sp,
              Icons.delete_forever_sharp,
              color: Color(0xffF62973),
            ),
          ),
        )
      ],
    );
  }
}
