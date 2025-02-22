import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Theme.of(context).dividerColor),
              ),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionBar(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor:
                            Theme.of(
                              context,
                            ).colorScheme.surfaceContainerHighest,
                        hintText: 'Search',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 15,
          color: Colors.redAccent,
          icon: const Icon(Icons.circle),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 15,
          color: Colors.amberAccent,
          icon: const Icon(Icons.circle),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 15,
          color: Colors.greenAccent,
          icon: const Icon(Icons.circle),
        ),
      ],
    );
  }
}
