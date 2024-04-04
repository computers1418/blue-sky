import 'package:flutter/material.dart';

import 'dot_indicator_view.dart';

class MyPageView extends StatefulWidget {

  const MyPageView({
    super.key,
    required this.pageViewHeight,
    required this.itemBuilder,
    required this.pagesCount,
    this.headerWidget,
    this.footerWidget,
  });
  final Widget Function(BuildContext, int) itemBuilder;
  final double pageViewHeight;
  final int pagesCount;
  final Widget Function(BuildContext, int)? headerWidget;
  final Widget Function(BuildContext, int)? footerWidget;
  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  late PageController _pageController;
  late ValueNotifier<int> currentPageNotifier;
  @override
  void initState() {
    super.initState();
    currentPageNotifier = ValueNotifier<int>(0);
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: currentPageNotifier,
        builder: (context, currentPage, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.headerWidget?.call(context, currentPage) ??
                  const SizedBox.shrink(),
              SizedBox(
                height: widget.pageViewHeight,
                child: PageView.builder(
                  itemCount: widget.pagesCount,
                  controller: _pageController,
                  onPageChanged: (index) {
                    currentPageNotifier.value = index;
                  },
                  itemBuilder: widget.itemBuilder,
                ),
              ),
              widget.footerWidget?.call(context, currentPage) ??
                  const SizedBox.shrink(),
              DotIndicator(
                childrenCount: widget.pagesCount,
                currentPage: currentPage,
              ),
            ],
          );
        });
  }
}
