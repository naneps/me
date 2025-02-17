import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:provider/provider.dart';

class NavigationProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  set index(int index) {
    _index = index;
    notifyListeners();
  }
}

enum NavigationType { vertical, horizontal }

class NavigationWidget extends StatelessWidget {
  final Function(int) onItemSelected;
  final NavigationType navigationType;

  const NavigationWidget({
    super.key,
    required this.onItemSelected,
    this.navigationType = NavigationType.vertical, // Default to vertical
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<NavigationProvider>().index;
    final items = [
      {
        'icon': LucideIcons.user,
        'activeIcon': LucideIcons.userRound,
        'label': "About me",
      },
      {
        'icon': Icons.work_outline,
        'activeIcon': Icons.work,
        'label': "Experience",
      },
      {
        'icon': LucideIcons.laptop,
        'activeIcon': LucideIcons.laptopMinimalCheck,
        'label': "Projects",
      },
      {
        'icon': LucideIcons.book,
        'activeIcon': LucideIcons.bookOpen,
        'label': "Skills",
      },
    ];

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child:
          navigationType == NavigationType.vertical
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(items.length, (index) {
                  final item = items[index];
                  return _NavigationItem(
                    index: index,
                    isSelected: currentIndex == index,
                    icon: item['icon']! as IconData,
                    activeIcon: item['activeIcon']! as IconData,
                    label: item['label']! as String,
                    onTap: () => onItemSelected(index),
                  );
                }),
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(items.length, (index) {
                  final item = items[index];
                  return _NavigationItem(
                    index: index,
                    isSelected: currentIndex == index,
                    icon: item['icon']! as IconData,
                    activeIcon: item['activeIcon']! as IconData,
                    label: item['label']! as String,
                    onTap: () => onItemSelected(index),
                  );
                }),
              ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final VoidCallback onTap;

  const _NavigationItem({
    required this.index,
    required this.isSelected,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          width: 40,
          height: 40,
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: isSelected ? Theme.of(context).colorScheme.primary : null,
            shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
          ),
          alignment: Alignment.center,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Icon(
              isSelected ? activeIcon : icon,
              key: ValueKey<bool>(isSelected),
              color:
                  isSelected ? Theme.of(context).colorScheme.onPrimary : null,
            ),
          ),
        ),
      ),
    );
  }
}
