import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final Icon leadingIcon;
  final String name;

  PlantCard(this.leadingIcon, this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: leadingIcon,
            title: Text(name),
          ),
          Row(
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                fit: BoxFit.fitWidth,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
            ],
          )
        ]));
  }
}
