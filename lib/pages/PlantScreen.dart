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
    return GridView.extent(
        maxCrossAxisExtent: 500,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: cards);
  }
}
