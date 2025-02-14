import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveCatAnimation extends StatefulWidget {
  const RiveCatAnimation({super.key});

  @override
  _RiveCatAnimationState createState() => _RiveCatAnimationState();
}

class _RiveCatAnimationState extends State<RiveCatAnimation> {
  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      'assets/rive/cat.riv',
      fit: BoxFit.fitHeight,
      speedMultiplier: 0.5,

      stateMachines: const ['State Machine 1'],
    );
  }
}
