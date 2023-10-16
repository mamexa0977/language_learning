// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';
// import 'package:simple_animations/simple_animations.dart';


// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;

//   FadeAnimation(this.delay, this.child);

//   @override
//   Widget build(BuildContext context) {
//     final tween = MultiTween([
//       Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//       Track("translateY").add(
//         Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
//         curve: Curves.easeOut)
//     ]);

//     return PlayAnimation(
//       delay: Duration(milliseconds: (500 * delay).round()),
//       duration: tween.duration,
//       tween: tween,
//       child: child,
//       builderWithChild: (context, child, animation) => Opacity(
//         opacity: animation["opacity"],
//         child: Transform.translate(
//           offset: Offset(0, animation["translateY"]), 
//           child: child
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final width = MovieTweenProperty<double>();
    final opacity = MovieTweenProperty<double>();

    final tween = MovieTween()
      ..scene(
        begin: Duration.zero,
        end: const Duration(milliseconds: 500),
      ).tween(width, Tween(begin: -30.0, end: 0.0), curve: Curves.easeOut)
      ..scene(
        begin: Duration.zero,
        end: const Duration(milliseconds: 500),
      ).tween(opacity, Tween(begin: 0.0, end: 1.0));

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      builder: (context, value, child) {
        return Opacity(
          opacity: opacity.from(value),
          child: Transform.translate(
            offset: Offset(0, width.from(value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
