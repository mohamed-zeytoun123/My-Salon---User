import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Type%20Order/order_pending_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOrderPendingWidget extends StatelessWidget {
  const ListOrderPendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: DummyData.orderPendingListDUMMY.length,
      itemBuilder: (context, index) {
        return OrderPendingWidget(model: DummyData.orderPendingListDUMMY[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10.h);
      },
    );
  }
}
