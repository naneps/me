import 'package:flutter/material.dart';
import 'package:me/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ButtonToggleTheme extends StatelessWidget {
  const ButtonToggleTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder:
              (Widget child, Animation<double> animation) =>
                  ScaleTransition(scale: animation, child: child),
          child: IconButton.outlined(
            icon:
                provider.themeMode == ThemeMode.light
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
            key: ValueKey(provider.themeMode),
            iconSize: 25,
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).canvasColor,
              fixedSize: Size(55, 55),
            ),
            onPressed: () {
              provider.toggleTheme();
            },
          ),
        );
      },
    );
  }
}
