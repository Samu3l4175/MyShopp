import 'package:flutter/material.dart';
import 'package:myshopp/stories/stories.dart';
import 'package:myshopp/stories/story_page.dart';

List<Widget> dummyStories = [
  const Stories(
    name: 'Abdul',
    imageURL: 'assets/images/test.jpg',
    stories: [
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: 'Abdul',
          imageURL: 'assets/images/test.jpg'),
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: 'Abdul',
          imageURL: 'assets/images/test.jpg'),
    ],
  ),
  const Stories(
    name: '2Story',
    imageURL: 'assets/images/test.jpg',
    stories: [
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: '2Story',
          imageURL: 'assets/images/test.jpg'),
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: '2Story',
          imageURL: 'assets/images/test.jpg'),
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: '2Story',
          imageURL: 'assets/images/test.jpg'),
      StoryPage(
          image: AssetImage('assets/images/test.jpg'),
          name: '2Story',
          imageURL: 'assets/images/test.jpg'),
    ],
  ),
];
