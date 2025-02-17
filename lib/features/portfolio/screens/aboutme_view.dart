import 'package:flutter/material.dart';
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Experienced Flutter Developer with expertise in building high-performance mobile applications and cross-platform solutions. Skilled in integrating advanced technologies such as AI, hardware devices, and robotics to create seamless app experiences. Proven track record in delivering end-to-end solutions, including self-service kiosks and HR platforms. Adept at working in Agile Scrum environments, with a strong ability to quickly learn and implement emerging technologies. Passionate about developing intuitive and scalable apps that drive business innovation and enhance user experiences.",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
