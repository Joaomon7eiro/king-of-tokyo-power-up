import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_dialog/easy_dialog.dart';
import '../models/monster.dart';
import '../models/evolution.dart';
import '../widgets/evolution_item.dart';

class MonsterPage extends StatefulWidget {
  static final String routeName = '/monster';

  @override
  _MonsterPageState createState() => _MonsterPageState();
}

class _MonsterPageState extends State<MonsterPage> {
  bool hasStarted = false;

  start() {
    setState(() {
      hasStarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Monster monster = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(monster.name),
        backgroundColor: monster.color,
      ),
      body: hasStarted
          ? MonsterGamePage(monster)
          : MonsterCardsPage(monster, start),
    );
  }
}

class MonsterGamePage extends StatefulWidget {
  final Monster monster;

  const MonsterGamePage(this.monster);

  @override
  _MonsterGamePageState createState() => _MonsterGamePageState();
}

class _MonsterGamePageState extends State<MonsterGamePage> {
  List<Evolution> currentEvolutions = [];
  List<Evolution> randomEvolutions;
  List<Evolution> chooseEvolutions = [];

  @override
  void initState() {
    super.initState();
    randomEvolutions = widget.monster.evolutions
        .map((e) =>
            Evolution(type: e.type, description: e.description, title: e.title))
        .toList();

    randomEvolutions.shuffle();
  }

  void _activateCardDialog(Evolution e) {
    EasyDialog(
      title: Text(
        "Deseja Ativar essa Carta?",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      contentList: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                EasyDialog(
                  title: Text(
                    "Ative o efeito",
                    textScaleFactor: 1.1,
                    textAlign: TextAlign.center,
                  ),
                  description: Text(e.description),
                ).show(context);

                if (e.type == 'Temporária') {
                  setState(() {
                    randomEvolutions.add(e);
                    currentEvolutions.remove(e);
                  });
                } else {
                  setState(() {
                    e.isActive = true;
                  });
                }
              },
              child: Text(
                'Sim',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  e.isActive = false;
                });
                Navigator.pop(context);
              },
              child: Text(
                'Não',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            )
          ],
        )
      ],
    ).show(context);
  }

  void _chooseCardDialog() {
    chooseEvolutions = [];

    if (randomEvolutions.length == 0) {
      EasyDialog(
          description: Text(
        "Acabaram suas cartas de evolução",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      )).show(context);
      return;
    }
    chooseEvolutions.add(randomEvolutions[0]);

    if (randomEvolutions.length > 1) {
      chooseEvolutions.add(randomEvolutions[1]);
    }

    EasyDialog(
      closeButton: false,
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width * 0.95,
      title: Text(
        "Escolha uma Carta",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      contentList: [
        Column(
          children: chooseEvolutions
              .map(
                (e) => InkWell(
                  onTap: () {
                    setState(() {
                      currentEvolutions.add(e);
                      randomEvolutions.remove(e);
                      chooseEvolutions.remove(e);
                    });
                    if (randomEvolutions.length != 0) {
                      randomEvolutions.removeAt(0);
                      randomEvolutions.add(chooseEvolutions[0]);
                    }
                    Navigator.pop(context);
                  },
                  child: EvolutionItem(
                    evolution: e,
                    monsterName: widget.monster.name,
                    color: widget.monster.color,
                  ),
                ),
              )
              .toList(),
        )
      ],
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Stack(
            children: <Widget>[
              Center(
                child: RaisedButton(
                  onPressed: _chooseCardDialog,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Escolher Evolução',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => InkWell(
              onLongPress: () {
                _activateCardDialog(currentEvolutions[index]);
              },
              child: Stack(
                children: <Widget>[
                  EvolutionItem(
                    evolution: currentEvolutions[index],
                    monsterName: widget.monster.name,
                    color: widget.monster.color,
                  ),
                  currentEvolutions[index].isActive
                      ? Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            childCount: currentEvolutions.length,
          ),
        )
      ],
    );
  }
}

class MonsterCardsPage extends StatelessWidget {
  final Monster monster;
  final Function start;

  const MonsterCardsPage(this.monster, this.start);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Stack(
            children: <Widget>[
              Center(
                child: RaisedButton(
                  onPressed: () {
                    start();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'COMEÇAR',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => EvolutionItem(
              evolution: monster.evolutions[index],
              monsterName: monster.name,
              color: monster.color,
            ),
            childCount: monster.evolutions.length,
          ),
        )
      ],
    );
  }
}
