import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Plant',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Center(child: Icon(Icons.book)));
  }
}
