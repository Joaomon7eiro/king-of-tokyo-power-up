import 'package:flutter/material.dart';

import '../models/evolution.dart';

class Monster {
  final String name;
  final Color color;
  final List<Evolution> evolutions;

  const Monster({this.name, this.evolutions, this.color});
}
