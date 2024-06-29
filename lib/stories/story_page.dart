import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
        child: Column(
          children: [
            Image.asset('assets/images/test.jpg'),
            ElevatedButton(onPressed: () {}, child: Text('Add to Cart'))
          ],
        ),
      ),
    );
  }
}
