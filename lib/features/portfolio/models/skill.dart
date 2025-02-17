enum Level { beginner, intermediate, advanced, expert }

class SkillModel {
  final String name;
  final String icon;
  final String color;
  final String description;
  Level level = Level.beginner;

  SkillModel({
    required this.name,
    required this.icon,
    required this.color,
    required this.description,
  });
}

enum Type { programming, tools, languages, frameworks }
