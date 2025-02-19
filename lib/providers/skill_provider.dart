import 'package:flutter/material.dart';
import 'package:me/features/portfolio/models/skill.dart';

final dummySkills = {
  "programming_languages": [
    {
      "name": "JavaScript",
      "icon": "https://img.icons8.com/ios/50/000000/javascript.png",
      "color": "#F7DF1E",
    },
    {
      "name": "Dart",
      "icon":
          "https://static-00.iconduck.com/assets.00/dart-icon-2042x2048-775u9j9x.png",
      "color": "#00B6D1",
    },
    {
      "name": "TypeScript",
      "icon": "https://img.icons8.com/ios/50/000000/typescript.png",
      "color": "#3178C6",
    },
    {
      "name": "PHP",
      "icon": "https://img.icons8.com/ios/50/000000/php.png",
      "color": "#8993BE",
    },
    {
      "name": "Python",
      "icon": "https://img.icons8.com/ios/50/000000/python.png",
      "color": "#3776AB",
    },
    {
      "name": "Java",
      "icon": "https://img.icons8.com/ios/50/000000/java-coffee-cup-logo.png",
      "color": "#ED8B00",
    },
  ],
  "technologies_frameworks": [
    {
      "name": "Flutter",
      "icon": "https://img.icons8.com/ios/50/000000/flutter.png",
      "color": "#02569B",
    },
    {
      "name": "Firebase",
      "icon":
          "https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png",
      "color": "#FFCB2B",
    },
    {
      "name": "OpenAI",
      "icon":
          "https://static-00.iconduck.com/assets.00/openai-icon-505x512-pr6amibw.png",
      "color": "#FFFFFF",
    },
    {
      "name": "Gemini",
      "icon":
          "https://registry.npmmirror.com/@lobehub/icons-static-png/latest/files/dark/gemini-color.png",
      "color": "#FFFFFF",
    },
    {
      "name": "Vue.js",
      "icon": "https://img.icons8.com/ios/50/000000/vue-js.png",
      "color": "#4FC08D",
    },
    {
      "name": "NuxtJS",
      "icon": "https://img.icons8.com/ios/50/000000/nuxtjs.png",
      "color": "#00DC82",
    },
    {
      "name": "Laravel",
      "icon": "https://img.icons8.com/ios/50/000000/laravel.png",
      "color": "#F9534F",
    },
  ],
  "tools": [
    {
      "name": "GitHub",
      "icon": "https://img.icons8.com/ios/50/000000/github.png",
      "color": "#24292F",
    },
    {
      "name": "VS Code",
      "icon": "https://img.icons8.com/ios/50/000000/visual-studio-code.png",
      "color": "#006B8D",
    },
    {
      "name": "Postman",
      "icon": "https://img.icons8.com/ios/50/000000/postman.png",
      "color": "#FF6C37",
    },
    {
      "name": "Android Studio",
      "icon": "https://img.icons8.com/ios/50/000000/android-studio.png",
      "color": "#3DDC84",
    },
    {
      "name": "JIRA",
      "icon": "https://img.icons8.com/ios/50/000000/jira.png",
      "color": "#0052CC",
    },
    {
      "name": "Figma",
      "icon": "https://img.icons8.com/ios/50/000000/figma.png",
      "color": "#F24E1E",
    },
    {
      "name": "Slack",
      "icon": "https://img.icons8.com/ios/50/000000/slack.png",
      "color": "#EBEBEB",
    },
    {
      "name": "Notion",
      "icon": "https://img.icons8.com/ios/50/000000/notion.png",
      "color": "#000000",
    },
  ],
};

class SkillsProvider with ChangeNotifier {
  List<Skill> _programmingLanguages = [];
  List<Skill> _technologiesFrameworks = [];
  List<Skill> _tools = [];

  List<Skill> get programmingLanguages => _programmingLanguages;
  List<Skill> get technologiesFrameworks => _technologiesFrameworks;
  List<Skill> get tools => _tools;

  void setSkills() {
    _programmingLanguages =
        (dummySkills['programming_languages'] as List)
            .map((e) => Skill.fromJson(e))
            .toList();
    _technologiesFrameworks =
        (dummySkills['technologies_frameworks'] as List)
            .map((e) => Skill.fromJson(e))
            .toList();
    _tools =
        (dummySkills['tools'] as List).map((e) => Skill.fromJson(e)).toList();
    notifyListeners();
  }
}
