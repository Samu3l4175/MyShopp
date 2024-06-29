import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';
import 'package:myshopp/stories/stories.dart';

class Stori extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Stories(
      circlePadding: 2,
      storyItemList: [
        StoryItem(
          name: 'Abdul',
          thumbnail: const AssetImage('assets/images/test.jpg'),
          stories: stories,
        ),
      ],
    );
  }
}
