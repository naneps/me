import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:me/shared/widgets/border_glow/lib/glowy_borders.dart';

class CVButton extends StatelessWidget {
  const CVButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedGradientBorder(
        gradientColors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.onPrimary,
        ],
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).canvasColor,
            side: BorderSide(color: Theme.of(context).dividerColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          icon: Icon(LucideIcons.paperclip, color: Colors.blueAccent),
          label: Text("MY CV HERE"),
        ),
      ),
    );
  }
}
