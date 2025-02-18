import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SocialButtonsProvider>(context);
    final socials = provider.socials;
    final hoveredIndex = provider.hoveredIndex;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(socials.length, (i) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 1.0, end: hoveredIndex == i ? 1.2 : 1.0),
              duration: const Duration(milliseconds: 200),
              builder: (context, scale, child) {
                return MouseRegion(
                  onEnter: (_) => provider.setHoveredIndex(i),
                  onExit: (_) => provider.setHoveredIndex(null),
                  child: child!,
                );
              },
              child: GestureDetector(
                onTap: () => launchUrl(Uri.parse(socials[i]['link'])),
                child: AnimatedScale(
                  scale: hoveredIndex == i ? 1.2 : 1.0,
                  duration: const Duration(milliseconds: 200),
                  child: Icon(socials[i]['icon'], size: 26)
                      .animate(
                        onPlay:
                            (controller) => controller.repeat(reverse: true),
                      )
                      .scaleXY(
                        end: 1.1,
                        duration: 800.ms,
                        curve: Curves.easeInOutBack,
                        delay: (i * 300).ms, // Delay animasi bergantian
                      ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class SocialButtonsProvider extends ChangeNotifier {
  List<Map<String, dynamic>> socials = [
    {
      'name': 'Instagram',
      'link': 'https://www.instagram.com/nannnde/',
      'icon': LucideIcons.instagram,
    },
    {
      'name': 'Linkedin',
      'link': 'https://www.linkedin.com/in/nandang-eka-prasetya/',
      'icon': LucideIcons.linkedin,
    },
    {
      'name': 'Github',
      'link': 'https://github.com/naneps',
      'icon': LucideIcons.github,
    },
  ];

  int? hoveredIndex;

  void setHoveredIndex(int? index) {
    hoveredIndex = index;
    notifyListeners();
  }
}
