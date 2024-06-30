import 'package:flutter/material.dart';

class ReelsThumbernail extends StatelessWidget {
  const ReelsThumbernail({super.key, required this.thumbernailImage});

  final ImageProvider<Object> thumbernailImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: thumbernailImage),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  Text('title'),
                  Text('price'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
