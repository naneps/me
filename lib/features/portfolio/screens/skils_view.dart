import 'package:flutter/material.dart';
import 'package:me/features/portfolio/models/skill.dart';
import 'package:me/providers/skill_provider.dart';
import 'package:me/shared/widgets/scrolling_listview.dart';
import 'package:me/shared/widgets/section_wrapper.dart';
import 'package:me/shared/widgets/skill_widget.dart';
import 'package:provider/provider.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    final skillsProvider = Provider.of<SkillsProvider>(context)..setSkills();

    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 20,
        children: [
          Text("What i use ?", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: ScrollingListView<Skill>(
              items: skillsProvider.programmingLanguages.map((e) => e).toList(),
              autoScroll: true,
              scrollDuration: const Duration(milliseconds: 500),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, item, index) {
                return SkillWidget(item: item);
              },
            ),
          ),
          SizedBox(
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: ScrollingListView<Skill>(
              items:
                  skillsProvider.technologiesFrameworks.map((e) => e).toList(),
              autoScroll: true,
              scrollDuration: const Duration(milliseconds: 500),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, item, index) {
                return SkillWidget(item: item);
              },
            ),
          ),

          SizedBox(
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: ScrollingListView<Skill>(
              items: skillsProvider.tools.map((e) => e).toList(),
              autoScroll: true,
              scrollDuration: const Duration(milliseconds: 500),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, item, index) {
                return SkillWidget(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
