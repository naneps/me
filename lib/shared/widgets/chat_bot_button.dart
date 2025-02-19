import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:me/providers/core_provider.dart';
import 'package:provider/provider.dart';

class ChatBotButton extends StatelessWidget {
  const ChatBotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                  gradient: RadialGradient(
                    colors: [
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.onPrimary,
                    ],
                  ),
                ),
              )
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .scale(
                begin: Offset.zero,
                end: const Offset(1.2, 1.2),
                duration: 1000.ms,
                curve: Curves.fastLinearToSlowEaseIn,
              ),
        ),
        IconButton.outlined(
              iconSize: 25,
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).canvasColor,
                fixedSize: Size(55, 55),
              ),
              onPressed: () {
                context.read<CoreProvider>().toggleChat();
              },
              icon: const Icon(LucideIcons.messageCircleCode),
              tooltip: 'Chat Bot',
            )
            .animate(onPlay: (controller) => controller.repeat(reverse: true))
            .shimmer(delay: 4100.ms, duration: 1000.ms),
      ],
    );
  }
}
