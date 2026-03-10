import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Player extends RectangleComponent {
  static const double jumpForce = -400;
  Vector2 velocity = Vector2.zero();

  Player()
      : super(
    size: Vector2(50, 50),
    paint: Paint()..color = Colors.green,
  );

  @override
  void update(double dt) {
    super.update(dt);

    const gravity = 800;
    velocity.y += gravity * dt;
    position += velocity * dt;
  }

  void jump() {
    velocity.y = jumpForce;
  }
}