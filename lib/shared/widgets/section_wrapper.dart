import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:me/shared/widgets/border_glow/lib/glowy_borders.dart';

class SectionWrapper extends StatelessWidget {
  final Widget child;
  final Size? size;
  const SectionWrapper({super.key, required this.child, this.size});

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      gradientColors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.onPrimary,
      ],
      glowSize: 1,
      borderSize: 1,
      animationProgress: 2,
      stretchAlongAxis: true,

      borderRadius: BorderRadius.circular(20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: size?.width,
        height: size?.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Theme.of(context).canvasColor),
        child: child,
      ),
    ).animate().saturate(
      begin: 0,
      end: 1,
      delay: 100.ms,
      curve: Curves.easeInOutBack,
    );
  }
}
