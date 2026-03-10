import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game/doodle_game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final DoodleGame game = DoodleGame();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget(game: game),
      ),
    );
  }
}