import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget storyPage = Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/test.jpg'),
              ),
            ),
          ),
          Text('TEST')
        ],
      ),
    );

    return storyPage;
  }
}
