import 'dart:ui';
import 'package:flame/game/base_game.dart';
import 'package:run_dino_run/components/dino.dart';
import 'package:run_dino_run/components/scene.dart';

class DinoGame extends BaseGame {
  Size screenSize;
  Dino _dino;
  Scene _scene;

  DinoGame() {
    _dino = Dino();
    _scene = Scene();

    // background scene
    add(_scene);

    // add dino to game
    add(_dino);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
  }

  @override
  void resize(Size size) {
    super.resize(size);
    this.screenSize = size;
  }
}
