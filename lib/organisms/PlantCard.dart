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
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(children: [
          Stack(
            children: [
              Ink.image(
                image: NetworkImage(this.imageUrl),
                height: 240,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  this.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                DateFormat('MM/dd').format(this.careDate) + '　' + this.careText,
                textAlign: TextAlign.start,
              ),
            )
          ]),
          ButtonBar(
            alignment: MainAxisAlignment.end,
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
