import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_story_pages.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
    required this.name,
    required this.imageURL,
    required this.stories,
  });

  final String imageURL;
  final String name;
  final List<Widget> stories;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return ListStoryPages(
                stories: stories,
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
                    backgroundImage: AssetImage(imageURL),
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
