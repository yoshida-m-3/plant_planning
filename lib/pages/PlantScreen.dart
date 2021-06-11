import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('みかん'),
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
              ])),
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enhanted Nightingale'),
              subtitle: Text('Music by Julie Gable Lyrics by Sidney Stein.'),
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
          ]))
        ]);
  }
}
