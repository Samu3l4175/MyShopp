import 'dart:io';

import 'package:flutter/material.dart';

class ListStoryPages extends StatelessWidget {
  const ListStoryPages({
    super.key,
    required this.stories,
  });

  final List<Widget> stories;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 0,
    );

    return PageView(
      controller: controller,
      children: stories,
      onPageChanged: (index) async {
        if (index + 1 == stories.length) {
          await controller.animateToPage(
            stories.indexOf(stories.last),
            duration: Durations.medium1,
            curve: Curves.linear,
          );
          Navigator.pop(context);
        }
      },
    );
  }
}
