import 'package:flutter/material.dart';

class SectionWrapper extends StatelessWidget {
  final Widget child;
  final Size? size;
  const SectionWrapper({super.key, required this.child, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width,
      height: size?.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
