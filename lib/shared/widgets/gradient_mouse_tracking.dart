import 'package:flutter/material.dart';

class GradientMouseTracking extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;

  const GradientMouseTracking({
    super.key,
    required this.child,
    required this.scrollController,
  });

  @override
  State<GradientMouseTracking> createState() => _GradientMouseTrackingState();
}

class _GradientMouseTrackingState extends State<GradientMouseTracking> {
  Offset _mousePosition = Offset.zero;
  double _scrollOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double x = (_mousePosition.dx / size.width) * 2 - 1;
    double y = (_mousePosition.dy / size.height) * 2 - 1;

    double scrollEffect = (_scrollOffset / size.height) * 2;

    return MouseRegion(
      onHover: (event) {
        setState(() {
          _mousePosition = event.localPosition;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-x, -y - scrollEffect),
            end: Alignment(x, y + scrollEffect),
            stops: const [0, 0.4, 0.9, 1],
            colors: [
              Theme.of(context).colorScheme.onSurface,
              Theme.of(context).colorScheme.onSurface,
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.surface,
            ],
          ),
        ),
        child: widget.child,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      setState(() {
        _scrollOffset = widget.scrollController.offset;
      });
    });
  }
}
