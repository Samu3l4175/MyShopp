import 'package:flutter/material.dart';
import 'package:myshopp/stories/stories.dart';
import 'dart:math' as math;

//DATABASE OF STORIES

int getRandomInt() {
  //gets random integer
  return math.Random().nextInt(10) + 1;
}

List<ImageProvider<Object>> randomStories = [];

List<ImageProvider<Object>> getRandomNumberOfStories() {
  for (var i = 0; i < getRandomInt(); i++) {
    randomStories.add(
      AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    );
  }
  return randomStories;
}

List<Widget> dummyStories = [];

List<Widget> getRandomNumberOfStoriesThumbernail() {
  for (var i = 0; i < getRandomInt(); i++) {
    dummyStories.add(
      Stories(
        name: 'Abdul',
        thumbernail:
            AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
        listStoryImages: randomStories,
      ),
    );
  }
  return dummyStories;
}
