import 'package:flutter/material.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        children: [
          Text("Skills", style: Theme.of(context).textTheme.titleMedium),
          const Divider(),
          Text("Flutter", style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
