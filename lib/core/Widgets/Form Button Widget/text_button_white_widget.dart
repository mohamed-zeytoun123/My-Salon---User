import 'package:flutter/material.dart';

class TextButtonWhiteWidget extends StatelessWidget {
  final double width;
  final double hight;
  final String? label;
  final VoidCallback onPressed;
  final TextStyle? appTextStyles;
  final Color borderColor;
  final IconData? iconData;
  final Color? iconColor;
  final double? sizeIcon;
  final Color? buttonColor;

  const TextButtonWhiteWidget({
    super.key,
    required this.width,
    required this.hight,
    this.label,
    required this.onPressed,
    this.appTextStyles,
    this.borderColor = Colors.black,
    this.iconData,
    this.sizeIcon,
    this.iconColor,
    this.buttonColor = const Color(0xffF1F1F1),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.black.withOpacity(0.2),
        highlightColor: Colors.black.withOpacity(0.1),
        child: Ink(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: borderColor,
              width: 1,
            ),
          ),
          child: Center(
            child: iconData != null
                ? Icon(
                    iconData,
                    size: sizeIcon ?? 24.0,
                    color: iconColor,
                  )
                : (label != null
                    ? Text(
                        label!,
                        style: appTextStyles,
                      )
                    : SizedBox()),
          ),
        ),
      ),
    );
  }
}
