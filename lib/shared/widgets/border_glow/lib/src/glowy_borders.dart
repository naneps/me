library;

import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'animated_gradient_container.dart';

class AnimatedGradientBorder extends StatefulWidget {
  final Widget child;
  final double? borderSize;
  final double? glowSize;
  final List<Color> gradientColors;
  final BorderRadiusGeometry borderRadius;
  final int? animationTime;
  final double? animationProgress;
  final bool stretchAlongAxis;
  final Axis stretchAxis;

  const AnimatedGradientBorder({
    super.key,
    required this.child,
    required this.gradientColors,
    required this.borderRadius,
    this.animationTime,
    this.borderSize,
    this.glowSize,
    this.animationProgress,
    this.stretchAlongAxis = false,
    this.stretchAxis = Axis.horizontal,
  });

  @override
  _AnimatedGradientBorderState createState() => _AnimatedGradientBorderState();
}

class AnimatedGradientBorderProvider extends ChangeNotifier {
  late AnimationController _controller;
  late Animation<double> _angleAnimation;

  AnimatedGradientBorderProvider(
    TickerProvider vsync, {
    int animationTime = 2,
  }) {
    _controller = AnimationController(
      vsync: vsync,
      duration: Duration(seconds: animationTime),
    )..addListener(() {
      notifyListeners();
    });

    _angleAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * math.pi,
    ).animate(_controller);
    _controller.repeat(
      reverse: true,
      period: Duration(seconds: animationTime),
      count: animationTime * 2,
    ); // repeat animation
  }

  double get angle => _angleAnimation.value;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void updateProgress(double progress) {
    _controller.animateTo(progress);
  }
}

class _AnimatedGradientBorderState extends State<AnimatedGradientBorder>
    with TickerProviderStateMixin {
  late AnimatedGradientBorderProvider provider;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<AnimatedGradientBorderProvider>(
        builder: (context, provider, child) {
          final negativeMargin = -1.0 * (widget.borderSize ?? 0);

          return Container(
            padding: EdgeInsets.all(
              (widget.glowSize ?? 5) * 3 + (widget.borderSize ?? 0) * 3,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(borderRadius: widget.borderRadius),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: negativeMargin,
                  left: negativeMargin,
                  right: negativeMargin,
                  bottom: negativeMargin,
                  child: AnimatedGradientContainer(
                    gradientColors: widget.gradientColors,
                    borderRadius: widget.borderRadius,
                    gradientAngle: provider.angle,
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: widget.glowSize ?? 0,
                    sigmaY: widget.glowSize ?? 0,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.hardEdge,
                    children: [
                      Positioned(
                        top: negativeMargin,
                        right: negativeMargin,
                        left: negativeMargin,
                        bottom: negativeMargin,
                        child: AnimatedGradientContainer(
                          gradientColors: widget.gradientColors,
                          borderRadius: widget.borderRadius,
                          gradientAngle: provider.angle,
                        ),
                      ),
                      if (widget.stretchAlongAxis)
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: widget.borderRadius,
                          ),
                          width:
                              widget.stretchAxis == Axis.horizontal
                                  ? double.infinity
                                  : null,
                          height:
                              widget.stretchAxis == Axis.vertical
                                  ? double.infinity
                                  : null,
                          child: widget.child,
                        )
                      else
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: widget.borderRadius,
                          ),
                          child: widget.child,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    provider.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    provider = AnimatedGradientBorderProvider(
      this,
      animationTime: widget.animationTime ?? 2,
    );
  }
}
