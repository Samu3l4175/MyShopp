import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_stories.dart';

// List<Widget> dummyStories() {
//   List storiesList = [];
//   for (int i = 0; i <= 10; i++) {
//     storiesList.add(Stories());
//   }
//   return storiesList;
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'MyShopp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: dummyStories,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Text('') //TODO,
            ),
      ),
    );
  }
}
