import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_planning/organisms/PlantCard.dart';

class PlantScreen extends StatelessWidget {
  final List<Widget> cards = [
    new PlantCard(
        Icon(Icons.album),
        'みかん',
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        new DateTime.now(),
        '肥料を与える'),
    new PlantCard(
        Icon(Icons.aod),
        '栗',
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        new DateTime.now(),
        '枝を剪定する'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: cards);
  }
}
