import 'package:flutter/material.dart';
import 'dart:async';

class ListStoryPages extends StatelessWidget {
  const ListStoryPages({
    super.key,
    required this.stories,
    required this.name,
    required this.thumbernail,
  });

  final String name;
  final ImageProvider<Object> thumbernail;
  final List<Widget> stories;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 0,
    );

    return PageView(
      controller: controller,
      children: stories,
      onPageChanged: (index) {
        if (index + 1 == stories.length) {
          controller;
          Timer(const Duration(seconds: 3), () {
            Navigator.pop(context);
          });
        }
      },
    );
  }
}
