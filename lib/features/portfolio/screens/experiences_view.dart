import 'package:flutter/material.dart';
import 'package:me/shared/widgets/section_wrapper.dart';

class ExperiencesView extends StatelessWidget {
  const ExperiencesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWrapper(
      size: Size.fromHeight(MediaQuery.of(context).size.height),
      child: Column(
        children: [
          Text(
            "Work Experience",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder:
                      (context, index) => Container(
                        child: ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).canvasColor,
                            backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png",
                            ),
                          ),
                          title: const Text("Flutter Developer"),
                          subtitle: const Text("Google"),
                          trailing: const Text("2022 - 2023"),
                        ),
                      ),
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
              Expanded(child: Container(child: Column())),
            ],
          ),
        ],
      ),
    );
  }
}
