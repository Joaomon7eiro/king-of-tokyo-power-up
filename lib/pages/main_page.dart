import 'package:flutter/material.dart';

import '../data/EVOLUTIONS_DATA.dart';

import '../pages/monster_page.dart';

class MainPage extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Monstros'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, MonsterPage.routeName,
                arguments: DATA[index]);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              color: DATA[index].color,
              padding: EdgeInsets.all(40),
              child: Center(
                child: Text(
                  DATA[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        itemCount: DATA.length,
      ),
    );
  }
}
