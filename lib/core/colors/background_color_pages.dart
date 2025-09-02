import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BackgroundColorPages extends SingleChildRenderObjectWidget {
  const BackgroundColorPages({
    super.key,
    super.child,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _GradientBackgroundRenderObject();
  }
}

class _GradientBackgroundRenderObject extends RenderProxyBox {
  final Gradient _gradient = const LinearGradient(
    colors: [Color(0xffA64D79), Color(0xffE195AB)],
    tileMode: TileMode.clamp,
  );

  @override
  void paint(PaintingContext context, Offset offset) {
    final Canvas canvas = context.canvas;

    //* إنشاء مستطيل يغطي الحجم الكامل
    final Rect rect = offset & size;

    //* تطبيق التدرج اللوني
    final Paint paint = Paint()..shader = _gradient.createShader(rect);

    //* رسم الخلفية بالتدرج
    canvas.drawRect(rect, paint);

    //* رسم الطفل (child) إذا كان موجودًا
    super.paint(context, offset);
  }
}
