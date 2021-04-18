import 'dart:ui';

import 'package:flame/components/parallax_component.dart';

class Scene extends ParallaxComponent {
  Scene()
      : super(
          [
            ParallaxImage('background/parallax/plx_1.png'),
            ParallaxImage('background/parallax/plx_2.png'),
            ParallaxImage('background/parallax/plx_3.png'),
            ParallaxImage('background/parallax/plx_4.png'),
            ParallaxImage('background/parallax/plx_5.png'),
            ParallaxImage('background/parallax/ground.png',
                fill: LayerFill.none),
          ],
          baseSpeed: Offset(70, 0),
          layerDelta: Offset(30, 0),
        );
}
