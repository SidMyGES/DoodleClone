import 'package:flame/game.dart';

import '../entities/player/player.dart';

class DoodleGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    final player = Player();

    player.position = Vector2(200, 400);

    add(player);
    player.jump();
  }
}