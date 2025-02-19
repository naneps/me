final dummySkills = SkillsModel(
  programmingLanguages: [
    Skill(
      name: "JavaScript",
      icon: "https://img.icons8.com/ios/50/000000/javascript.png",
      color: "#F7DF1E",
    ),
    Skill(
      name: "Dart",
      icon: "https://img.icons8.com/ios/50/000000/dart.png",
      color: "#00B6D1",
    ),
    Skill(
      name: "TypeScript",
      icon: "https://img.icons8.com/ios/50/000000/typescript.png",
      color: "#3178C6",
    ),
    Skill(
      name: "PHP",
      icon: "https://img.icons8.com/ios/50/000000/php.png",
      color: "#8993BE",
    ),
  ],
  technologiesFrameworks: [
    Skill(
      name: "Flutter",
      icon: "https://img.icons8.com/ios/50/000000/flutter.png",
      color: "#02569B",
    ),
    Skill(
      name: "Firebase",
      icon: "https://img.icons8.com/ios/50/000000/firebase.png",
      color: "#FFCB2B",
    ),
    Skill(
      name: "Vue.js",
      icon: "https://img.icons8.com/ios/50/000000/vue-js.png",
      color: "#4FC08D",
    ),
    Skill(
      name: "NuxtJS",
      icon: "https://img.icons8.com/ios/50/000000/nuxtjs.png",
      color: "#00DC82",
    ),
    Skill(
      name: "Laravel",
      icon: "https://img.icons8.com/ios/50/000000/laravel.png",
      color: "#F9534F",
    ),
    Skill(name: "GetX", color: "#45B0F7"),
    Skill(name: "BLoC", color: "#00B2A9"),
    Skill(
      name: "Node.js",
      icon: "https://img.icons8.com/ios/50/000000/node-js.png",
      color: "#8CC84B",
    ),
    Skill(
      name: "MySQL",
      icon: "https://img.icons8.com/ios/50/000000/mysql.png",
      color: "#00618A",
    ),
    Skill(name: "REST API", color: "#1F94E6"),
  ],
  tools: [
    Skill(
      name: "GitHub",
      icon: "https://img.icons8.com/ios/50/000000/github.png",
      color: "#24292F",
    ),
    Skill(
      name: "VS Code",
      icon: "https://img.icons8.com/ios/50/000000/visual-studio-code.png",
      color: "#006B8D",
    ),
    Skill(
      name: "Postman",
      icon: "https://img.icons8.com/ios/50/000000/postman.png",
      color: "#FF6C37",
    ),
    Skill(
      name: "Android Studio",
      icon: "https://img.icons8.com/ios/50/000000/android-studio.png",
      color: "#3DDC84",
    ),
    Skill(
      name: "JIRA",
      icon: "https://img.icons8.com/ios/50/000000/jira.png",
      color: "#0052CC",
    ),
    Skill(
      name: "Figma",
      icon: "https://img.icons8.com/ios/50/000000/figma.png",
      color: "#F24E1E",
    ),
    Skill(
      name: "Swagger",
      icon: "https://img.icons8.com/ios/50/000000/swagger.png",
      color: "#85C2FF",
    ),
  ],
);

class Skill {
  final String name;
  final String? icon;
  final String color;

  Skill({required this.name, this.icon, required this.color});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(name: json['name'], icon: json['icon'], color: json['color']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'icon': icon, 'color': color};
  }
}

class SkillsModel {
  final List<Skill> programmingLanguages;
  final List<Skill> technologiesFrameworks;
  final List<Skill> tools;

  SkillsModel({
    required this.programmingLanguages,
    required this.technologiesFrameworks,
    required this.tools,
  });

  factory SkillsModel.fromJson(Map<String, dynamic> json) {
    return SkillsModel(
      programmingLanguages:
          (json['programming_languages'] as List)
              .map((e) => Skill.fromJson(e))
              .toList(),
      technologiesFrameworks:
          (json['technologies_frameworks'] as List)
              .map((e) => Skill.fromJson(e))
              .toList(),
      tools: (json['tools'] as List).map((e) => Skill.fromJson(e)).toList(),
    );
  }
}
