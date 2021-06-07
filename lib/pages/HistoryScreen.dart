import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'History',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Center(child: Icon(Icons.cloud)));
  }
}
