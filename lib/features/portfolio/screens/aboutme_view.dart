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
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
