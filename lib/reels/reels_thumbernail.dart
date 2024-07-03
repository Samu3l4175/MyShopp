import 'package:flutter/material.dart';
import 'package:myshopp/reels/reels_page.dart';

//STYLING FOR THE REELS THUMBERNAIL

class ReelsThumbernail extends StatelessWidget {
  const ReelsThumbernail({
    super.key,
    required this.thumbernailImage,
    required this.title,
    required this.price,
  });

  final ImageProvider<Object> thumbernailImage;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    const TextStyle kTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: '', //TODO
    );

    const Radius kRadius = Radius.circular(10);

    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute<void>(
      //       builder: (BuildContext context) {
      //         return ReelsPage();
      //       },
      //     ),
      //   );
      // },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(kRadius)),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                height: double.infinity,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: kRadius,
                    topRight: kRadius,
                  ),
                  image: DecorationImage(
                    image: thumbernailImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: kTextStyle,
                  ),
                  Text(
                    '\$ $price',
                    style: kTextStyle.copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
