part of 'core_view.dart';

class CoreSmallScreen extends StatelessWidget {
  final ScrollController scrollController;
  final List<Widget> screens;
  final List<GlobalKey> sectionKeys;
  final Function(int index) scrollToIndex;
  const CoreSmallScreen({
    super.key,
    required this.scrollController,
    required this.screens,
    required this.sectionKeys,
    required this.scrollToIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CoreContentWidget(
          scrollController: scrollController,
          screens: screens,
          sectionKeys: sectionKeys,
        ),
        Positioned(
          bottom: 10,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationWidget(
                onItemSelected: scrollToIndex,
                navigationType: NavigationType.horizontal,
              ),
              ButtonToggleTheme(),
              ChatBotButton(),
              SocialButtons(direction: SocialButtonsDirection.horizontal),
            ],
          ),
        ),
      ],
    );
  }
}
