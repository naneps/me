import 'package:flutter/material.dart';
import 'package:me/shared/widgets/button_toggle_theme.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: ButtonToggleTheme(),
    );
  }
}
