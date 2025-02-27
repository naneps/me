import 'package:flutter/material.dart';
import 'package:me/shared/widgets/experience_tile.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class ExperiencesView extends StatelessWidget {
  const ExperiencesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Work Experience",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return ExperienceTile();
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "DevOps Engineer",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
