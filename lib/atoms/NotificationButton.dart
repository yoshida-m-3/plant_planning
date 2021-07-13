import 'package:flutter/material.dart';

class NotificationButton extends StatefulWidget {
  @override
  _NotificationButtonState createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  bool isEnabled = false;
  IconData icon = Icons.notifications;
  Color primaryColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(
        this.icon,
        color: Colors.yellow,
      ),
      label: const Text(
        '通知する',
      ),
      style: ElevatedButton.styleFrom(
        primary: this.primaryColor,
      ),
      onPressed: () {
        this.isEnabled = !this.isEnabled;

        setState(() {
          this.icon =
              this.isEnabled ? Icons.notifications_active : Icons.notifications;
          this.primaryColor =
              this.isEnabled ? Colors.indigoAccent : Colors.indigo;
        });
      },
    );
  }
}
