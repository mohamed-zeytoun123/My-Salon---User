import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Type%20Order/order_canceled_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOrderCanceledWidget extends StatelessWidget {
  const ListOrderCanceledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: DummyData.orderCanceledListDUMMY.length,
      itemBuilder: (context, index) {
        return OrderCanceledWidget(
            model: DummyData.orderCanceledListDUMMY[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10.h);
      },
    );
  }
}
