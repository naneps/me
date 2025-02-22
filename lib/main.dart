import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:me/core/core_view.dart';
import 'package:me/firebase_options.dart';
import 'package:me/providers/core_provider.dart';
import 'package:me/providers/skill_provider.dart';
import 'package:me/providers/theme_provider.dart';
import 'package:me/services/local_storage_service.dart';
import 'package:me/shared/themes/theme.dart';
import 'package:me/shared/themes/util.dart';
import 'package:me/shared/widgets/gemini_service.dart';
import 'package:me/shared/widgets/navigation_widget.dart';
import 'package:me/shared/widgets/social_buttons.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService().init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Inter", "Poppins");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return GeminiService("AIzaSyBVetPjBZhT5MzajWT4r5uw9JXaif2b7P0");
          },
        ),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => CoreProvider()),
        ChangeNotifierProvider(create: (_) => SocialButtonsProvider()),
        ChangeNotifierProvider(create: (_) => SkillsProvider()..setSkills()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Me',
            debugShowCheckedModeBanner: false,
            darkTheme: theme.dark(),
            theme: theme.light(),
            themeMode: context.watch<ThemeProvider>().themeMode,
            home: CoreView(),
          );
        },
      ),
    );
  }
}
