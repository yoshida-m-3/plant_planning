import ipackage:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_planning/organisms/PlantCard.dart';

class PlantScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[PlantCard()]);
  }
}
