import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlantCard extends StatelessWidget {
  final Icon leadingIcon;
  final String name;
  final String imageUrl;
  final DateTime careDate;
  final String careText;

  PlantCard(
      this.leadingIcon, this.name, this.imageUrl, this.careDate, this.careText);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: this.leadingIcon,
            title: Text(this.name),
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 300.0,
                  child: Image(
                    image: NetworkImage(this.imageUrl),
                    fit: BoxFit.fitHeight,
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              const SizedBox(width: 24),
              Text(DateFormat('MM/dd').format(this.careDate)),
              const SizedBox(width: 24),
              Text(this.careText)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: '編集',
                onPressed: () {},
              ),
              const SizedBox(width: 24),
            ],
          )
        ]));
  }
}
