import 'package:flutter/material.dart';

import './pages/main_page.dart';
import './pages/monster_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        MainPage.routeName: (context) => MainPage(),
        MonsterPage.routeName: (context) => MonsterPage(),
      },
    );
  }
}
