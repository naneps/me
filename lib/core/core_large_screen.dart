part of 'core_view.dart';

class CoreLargeScreen extends StatelessWidget {
  final ScrollController scrollController;
  final List<Widget> screens;
  final List<GlobalKey> sectionKeys;
  final Function(int index) scrollToIndex;

  const CoreLargeScreen({
    super.key,
    required this.scrollController,
    required this.screens,
    required this.sectionKeys,
    required this.scrollToIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NavigationWidget(onItemSelected: scrollToIndex),
              const SizedBox(height: 10),
              ButtonToggleTheme(),
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: CoreContentWidget(
            scrollController: scrollController,
            screens: screens,
            sectionKeys: sectionKeys,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ChatBotButton(),
              const SizedBox(height: 10),
              SocialButtons(),
              SizedBox(height: 350, child: RiveCatAnimation()),
            ],
          ),
        ),
      ],
    );
  }
}
