import 'package:flutter/material.dart';

class NotificationSwitchWidget extends StatefulWidget {
  final Function(bool) onToggle;

  const NotificationSwitchWidget({
    super.key,
    required this.onToggle,
  });

  @override
  State<NotificationSwitchWidget> createState() =>
      _NotificationSwitchWidgetState();
}

class _NotificationSwitchWidgetState extends State<NotificationSwitchWidget> {
  bool isNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isNotificationEnabled,
      onChanged: (value) {
        setState(() {
          isNotificationEnabled = value;
        });
        widget.onToggle(value);
      },
      activeColor: Colors.green,
      inactiveThumbColor: Colors.grey,
    );
  }
}
