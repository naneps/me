import 'dart:async';

import 'package:flutter/material.dart';
import 'package:me/shared/utils/custom_scroll_behavior.dart';

class ScrollingListView<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final bool autoScroll;
  final Duration scrollDuration;
  final Axis scrollDirection;
  final double? itemExtent;

  const ScrollingListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.autoScroll = false,
    this.scrollDuration = const Duration(seconds: 2),
    this.scrollDirection = Axis.horizontal,
    this.itemExtent,
  });

  @override
  _ScrollingListViewState<T> createState() => _ScrollingListViewState<T>();
}

class _ScrollingListViewState<T> extends State<ScrollingListView<T>> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  bool _isUserScrolling = false;
  bool _scrollDirectionForward = true; // True = maju, False = mundur

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => _stopAutoScroll(),
      onPointerUp: (_) => _restartAutoScroll(),
      child: ScrollConfiguration(
        behavior: CustomScrollBehavior(),

        child: ListView.builder(
          controller: _scrollController,
          itemCount: widget.items.length,
          scrollDirection: widget.scrollDirection,
          itemExtent: widget.itemExtent,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return widget.itemBuilder(context, widget.items[index], index);
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.autoScroll) {
      _startAutoScroll();
    }
  }

  void _restartAutoScroll() {
    _isUserScrolling = false;
    if (widget.autoScroll) {
      _startAutoScroll();
    }
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(widget.scrollDuration, (timer) {
      if (!_isUserScrolling && _scrollController.hasClients) {
        final maxScroll = _scrollController.position.maxScrollExtent;
        final minScroll = _scrollController.position.minScrollExtent;
        final currentScroll = _scrollController.position.pixels;
        final double scrollStep = 50.0;

        if (_scrollDirectionForward) {
          // Scroll ke depan
          if (currentScroll >= maxScroll) {
            _scrollDirectionForward = false; // Ubah arah ke belakang
          } else {
            _scrollController.animateTo(
              currentScroll + scrollStep,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          }
        } else {
          // Scroll ke belakang
          if (currentScroll <= minScroll) {
            _scrollDirectionForward = true; // Ubah arah ke depan
          } else {
            _scrollController.animateTo(
              currentScroll - scrollStep,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          }
        }
      }
    });
  }

  void _stopAutoScroll() {
    _isUserScrolling = true;
    _timer?.cancel();
  }
}
