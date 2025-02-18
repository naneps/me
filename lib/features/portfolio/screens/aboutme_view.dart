import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:me/shared/widgets/avatar_widget.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          AvatarWidget(),
          Divider(endIndent: 110, indent: 110),
          Text(
            "Nandang Eka Prasetya",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
                "Flutter Developer",
                style: Theme.of(context).textTheme.bodyLarge,
              )
              .animate(onPlay: (controller) => controller.repeat(reverse: true))
              .shimmer(delay: 1100.ms),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Experienced Flutter Developer ",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "specializing in ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "high-performance mobile apps, AI integration, ",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "and cross-platform solutions. Skilled in ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "Agile Scrum ",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "and passionate about building ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "intuitive, scalable applications.",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  textAlign: TextAlign.justify,
                )
                .animate(
                  onPlay: (controller) => controller.repeat(reverse: true),
                )
                .shimmer(
                  delay: Duration.zero,
                  duration: 1500.ms,
                  color: Theme.of(context).colorScheme.surfaceTint,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,

            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(LucideIcons.download),
                label: Text("Download CV"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
