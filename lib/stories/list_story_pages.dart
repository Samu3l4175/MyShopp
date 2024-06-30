import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'package:myshopp/stories/story_page.dart';

class ListStoryPages extends StatelessWidget {
  const ListStoryPages({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> getPages() {
      dummyStories.first.toString()
    }

    final controller = PageController(
      initialPage: 1,
    );

    return PageView(
      controller: controller,
      children: const [
        StoryPage(image: AssetImage('assets/images/test.jpg')),
        StoryPage(image: AssetImage('assets/images/test.jpg')),
        StoryPage(image: AssetImage('assets/images/test.jpg')),
      ],
    );
  }
}
