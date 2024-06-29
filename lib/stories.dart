import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            )
            //         Container(
            //           decoration: const BoxDecoration(
            //             shape: BoxShape.circle,
            //             gradient: LinearGradient(
            //               colors: [
            //                 Colors.red,
            //                 Colors.yellow,
            //               ],
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //             ),
            //           ),
            //           child: TextButton(
            //             onPressed: () {},
            //             child: const Padding(
            //               padding: EdgeInsets.all(.0),
            //               child: CircleAvatar(
            //                 backgroundImage: AssetImage('assets/images/test.jpg'),
            //                 radius: 30,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           decoration: const BoxDecoration(
            //             shape: BoxShape.circle,
            //             gradient: LinearGradient(
            //               colors: [
            //                 Colors.red,
            //                 Colors.yellow,
            //               ],
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //             ),
            //           ),
            //           child: const Padding(
            //             padding: EdgeInsets.all(4.0),
            //             child: CircleAvatar(
            //               backgroundImage: AssetImage('assets/images/test.jpg'),
            //               radius: 30,
            //             ),
            //           ),
            //         )
          ],
        ),
      ),
    );
  }
}
