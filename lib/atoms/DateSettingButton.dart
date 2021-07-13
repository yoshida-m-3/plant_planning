import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateSettingButton extends StatelessWidget {
  final String title;

  DateSettingButton(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365 * 3)),
              lastDate: DateTime.now().add(Duration(days: 365)));
        },
        child: Text(title));
  }
}
