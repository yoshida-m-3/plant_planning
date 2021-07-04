import 'package:flutter/material.dart';
import 'package:plant_planning/pages/NewItem.dart';
import './pages/PlantScreen.dart';
import './pages/HistoryScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Planning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
        '/newItem': (BuildContext context) => new NewItem(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // ページインデックス保存用
  int _screen = 0;

  // ページ下部に並べるナビゲーションメニューの一覧
  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.park),
        label: 'Plant',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'History',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Plant Planning',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: PageView(
          // ページ下部のナビゲーションメニューに相当する各ページビュー
          children: [
            PlantScreen(),
            HistoryScreen(),
          ]),
      // ページ下部のナビゲーションメニュー
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/newItem'),
        child: const Icon(Icons.mode),
      ),
    );
  }
}
