import 'package:flutter/material.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Projects", style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
