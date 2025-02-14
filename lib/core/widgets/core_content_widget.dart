import 'package:flutter/material.dart';

class CoreContentWidget extends StatelessWidget {
  final ScrollController _scrollController;

  final List<Widget> _screens;
  final List<GlobalKey<State<StatefulWidget>>> _sectionKeys;
  const CoreContentWidget({
    super.key,
    required ScrollController scrollController,
    required List<Widget> screens,
    required List<GlobalKey<State<StatefulWidget>>> sectionKeys,
  }) : _scrollController = scrollController,
       _screens = screens,
       _sectionKeys = sectionKeys;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      controller: _scrollController,
      physics: BouncingScrollPhysics(),
      itemCount: _screens.length,
      itemBuilder: (context, index) {
        final key = _sectionKeys[index];
        return SizedBox(key: key, child: _screens[index]);
      },
    );
  }
}
