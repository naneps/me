import 'package:flutter/material.dart';
import 'package:me/shared/widgets/project_card.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Projects", style: Theme.of(context).textTheme.titleMedium),
          Divider(),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProjectCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
