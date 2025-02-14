import 'package:flutter/material.dart';
import 'package:me/features/portfolio/screens/aboutme_view.dart';
import 'package:me/features/portfolio/screens/experiences_view.dart';
import 'package:me/features/portfolio/screens/projects_view.dart';
import 'package:me/features/portfolio/screens/skils_view.dart';
import 'package:me/shared/widgets/navigation_widget.dart';
import 'package:me/shared/widgets/rive_animation_widget.dart';
import 'package:provider/provider.dart';

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
      body: Row(
        children: [
          Expanded(
            child: Center(
              child: NavigationWidget(onItemSelected: _scrollToIndex),
            ),
          ),
          Expanded(
            flex: 7,
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              controller: _scrollController,
              physics: BouncingScrollPhysics(),
              itemCount: _screens.length,
              itemBuilder: (context, index) {
                final key = _sectionKeys[index];
                return SizedBox(key: key, child: _screens[index]);
              },
            ),
          ),
          Expanded(child: RiveCatAnimation()),
        ],
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
