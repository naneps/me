import 'package:flutter/material.dart';

class ThemeTransitionOverlay {
  static void show(BuildContext context, TransitionType type) {
    print(type);
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => _TransitionEffect(transitionType: type),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(milliseconds: 400), () {
      overlayEntry.remove();
    });
  }
}

enum TransitionType { fade, slide, morph, wave }

class _TransitionEffect extends StatefulWidget {
  final TransitionType transitionType;

  const _TransitionEffect({required this.transitionType});

  @override
  State<_TransitionEffect> createState() => _TransitionEffectState();
}

class _TransitionEffectState extends State<_TransitionEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          switch (widget.transitionType) {
            case TransitionType.fade:
              return Opacity(
                opacity: 1 - _controller.value,
                child: Container(color: Colors.black),
              );
            case TransitionType.slide:
              return Transform.translate(
                offset: Offset(
                  0,
                  (1 - _controller.value) * MediaQuery.of(context).size.height,
                ),
                child: Container(color: Colors.pink),
              );
            case TransitionType.morph:
              return ClipRRect(
                borderRadius: BorderRadius.circular(
                  200 * (1 - _controller.value),
                ),
                child: Container(color: Colors.black),
              );
            case TransitionType.wave:
              return _WaveTransition(progress: _controller.value);
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..forward();
  }
}

class _WaveClipper extends CustomClipper<Path> {
  final double progress;

  _WaveClipper(this.progress);

  @override
  Path getClip(Size size) {
    Path path = Path();
    double waveHeight = size.height * 0.1 * (1 - progress);
    path.moveTo(0, size.height);
    path.lineTo(0, size.height - waveHeight);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - (waveHeight * 2),
      size.width,
      size.height - waveHeight,
    );
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

/// Efek Wave (Custom Clipper)
class _WaveTransition extends StatelessWidget {
  final double progress;

  const _WaveTransition({required this.progress});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _WaveClipper(progress),
      child: Container(color: Colors.black),
    );
  }
}
