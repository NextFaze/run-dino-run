import 'dart:ui';

import 'package:flame/anchor.dart';
import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/spritesheet.dart';

// Animation frames
// 0 - 3 Idle
// 4 - 10 run
// 11 - 13 kick
// 14 - 16 hit
// 17 - 23 sprint
//
const double groundHeight = 10;
const double numberOfTilesAlongTheWidth = 10;

class Dino extends AnimationComponent {
  final _spriteSheet = SpriteSheet(
    imageName: 'characters/dino/dino_sprites_mort.png',
    columns: 24,
    textureHeight: 24,
    textureWidth: 24,
    rows: 1,
  );
  Animation _idleAnimation;
  Animation _runAnimation;
  Animation _hitAnimation;

  Dino() : super.empty() {
    _idleAnimation =
        _spriteSheet.createAnimation(0, from: 0, to: 3, stepTime: 0.125);
    _runAnimation =
        _spriteSheet.createAnimation(0, from: 4, to: 10, stepTime: 0.125);
    _hitAnimation =
        _spriteSheet.createAnimation(0, from: 14, to: 16, stepTime: 0.125);

    this.anchor = Anchor.center;
    this.animation = _runAnimation;
  }

  @override
  void resize(Size size) {
    super.resize(size);

    this.height = this.width = size.width / numberOfTilesAlongTheWidth;
    this.x = width;
    this.y = (size.height - groundHeight) - this.height / 2;
  }

  void idle() {
    this.animation = _idleAnimation;
  }

  void run() {
    this.animation = _runAnimation;
  }

  void hit() {
    this.animation = _hitAnimation;
  }
}
