import 'package:flutter/material.dart';
import 'package:me/core/widgets/core_content_widget.dart';
import 'package:me/features/chat_bot/screens/chat_bot_screen.dart';
import 'package:me/features/portfolio/screens/aboutme_view.dart';
import 'package:me/features/portfolio/screens/experiences_view.dart';
import 'package:me/features/portfolio/screens/projects_view.dart';
import 'package:me/features/portfolio/screens/skils_view.dart';
import 'package:me/providers/core_provider.dart';
import 'package:me/shared/widgets/button_toggle_theme.dart';
import 'package:me/shared/widgets/chat_bot_button.dart';
import 'package:me/shared/widgets/gradient_mouse_tracking.dart';
import 'package:me/shared/widgets/navigation_widget.dart';
import 'package:me/shared/widgets/rive_animation_widget.dart';
import 'package:me/shared/widgets/social_buttons.dart';
import 'package:provider/provider.dart';

part 'core_large_screen.dart';
part 'core_small_screen.dart';

class CoreView extends StatefulWidget {
  const CoreView({super.key});

  @override
  State<CoreView> createState() => _CoreViewState();
}

class _CoreViewState extends State<CoreView> {
  final _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(4, (index) => GlobalKey());
  final List<Widget> _screens = [
    AboutMeView(),
    ExperiencesView(),
    ProjectsView(),
    SkillsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientMouseTracking(
        scrollController: _scrollController,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 800) {
                  return CoreSmallScreen(
                    scrollController: _scrollController,
                    screens: _screens,
                    sectionKeys: _sectionKeys,
                    scrollToIndex: _scrollToIndex,
                  );
                }
                return CoreLargeScreen(
                  scrollController: _scrollController,
                  screens: _screens,
                  sectionKeys: _sectionKeys,
                  scrollToIndex: _scrollToIndex,
                );
              },
            ),
            Consumer<CoreProvider>(
              builder: (context, coreProvider, child) {
                return AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  right: 20,
                  bottom: coreProvider.isChatOpen ? 20 : -500,
                  child: ChatBotScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    for (int i = 0; i < _sectionKeys.length; i++) {
      final RenderBox? box =
          _sectionKeys[i].currentContext?.findRenderObject() as RenderBox?;
      if (box != null) {
        final position = box.localToGlobal(Offset.zero).dy;
        if (position <= 200) {
          context.read<NavigationProvider>().index = i;
        }
      }
    }
  }

  void _scrollToIndex(int index) {
    _scrollController.animateTo(
      index * MediaQuery.of(context).size.height,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOutBack,
    );
  }
}
