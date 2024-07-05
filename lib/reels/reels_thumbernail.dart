import 'package:flutter/material.dart';

//STYLING FOR THE REELS THUMBERNAIL

class ReelsThumbernail extends StatefulWidget {
  const ReelsThumbernail({
    super.key,
    required this.thumbernailImage,
    required this.title,
  });

  final ImageProvider<Object> thumbernailImage;
  final String title;

  @override
  State<ReelsThumbernail> createState() =>
      // ignore: no_logic_in_create_state
      _ReelsThumbernailState(thumbernailImage: thumbernailImage, title: title);
}

class _ReelsThumbernailState extends State<ReelsThumbernail> {
  _ReelsThumbernailState({required this.thumbernailImage, required this.title});

  final ImageProvider<Object> thumbernailImage;
  final String title;

  String _actualIcon = 'icon';

  final Widget _icon = const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );

  final Widget _iconfilled = const Icon(
    Icons.favorite,
    color: Colors.red,
  );

  Widget build(BuildContext context) {
    const TextStyle kTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: '', //TODO
    );

    const Radius kRadius = Radius.circular(10);

    return GestureDetector(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: kTextStyle,
                  ),
                  IconButton(
                    icon: _actualIcon != 'icon' ? _iconfilled : _icon,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        _actualIcon == 'icon'
                            ? _actualIcon = 'filledIcon'
                            : _actualIcon = 'icon';
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
