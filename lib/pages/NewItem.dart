import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '新規作成',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          OutlinedButton(onPressed: () {}, child: const Text('植物を選ぶ')),
          TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: '植物名'),
          )
        ],
      ),
    );
  }
}
