import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HoverProvider(),
      child: Consumer<HoverProvider>(
        builder: (context, hoverProvider, child) {
          return MouseRegion(
            onEnter: (_) => hoverProvider.setHovered(true),
            onExit: (_) => hoverProvider.setHovered(false),
            child: ClipOval(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: ColorFiltered(
                  key: ValueKey<bool>(hoverProvider.isHovered),
                  colorFilter:
                      hoverProvider.isHovered
                          ? const ColorFilter.mode(
                            Colors.transparent,
                            BlendMode.dst,
                          )
                          : const ColorFilter.mode(
                            Colors.grey,
                            BlendMode.saturation,
                          ),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://media.licdn.com/dms/image/v2/D5603AQFovS5UWc6iAA/profile-displayphoto-shrink_200_200/B56ZTQOUbmHEAY-/0/1738660203129?e=1744848000&v=beta&t=NAYjNFsM7RGQzg0i22KObXQ56mebV6gf-34oyS2uUkM",
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class HoverProvider extends ChangeNotifier {
  bool _isHovered = false;

  bool get isHovered => _isHovered;

  void setHovered(bool value) {
    _isHovered = value;
    notifyListeners();
  }
}
