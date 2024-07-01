import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_story_pages.dart';
import 'package:myshopp/stories/story_page.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
    required this.name,
    required this.thumbernail,
    required this.listStoryImages,
  });

  final ImageProvider<Object> thumbernail;
  final String name;
  final List<ImageProvider<Object>> listStoryImages;

  @override
  Widget build(BuildContext context) {
    final List<Widget> stories = [];

    List<Widget> getStories() {
      for (var image in listStoryImages) {
        stories.add(StoryPage(
          imageStory: image,
          name: name,
          thumbernail: thumbernail,
        ));
      }
      return stories;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return ListStoryPages(
                name: name,
                thumbernail: thumbernail,
                stories: getStories(),
              );
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.yellow,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              // change this edge to change the width of the border around the photo
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  // set this edge to change the distance of the border from the photo
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundImage: thumbernail,
                    radius: 35,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 80,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 10,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.normal,
                  fontFamily: '' //TODO,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
