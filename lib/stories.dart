import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const SafeArea(
        child: Row(
          children: [
            ImageIcon(
              AssetImage('assets/images/test.jpg'),
              size: 500,
              semanticLabel: 'Prova',
            ),
          ],
        ),
      ),
    );
  }
}
