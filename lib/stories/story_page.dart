import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({
    super.key,
    required this.imageStory,
    required this.name,
    required this.thumbernail,
  });

  final ImageProvider<Object> imageStory;
  final ImageProvider<Object> thumbernail;
  final String name;

  @override
  // ignore: no_logic_in_create_state
  State<StoryPage> createState() => _StoryPageState(
        imageStory,
        name,
        thumbernail,
      );
}

class _StoryPageState extends State<StoryPage> {
  _StoryPageState(this.imageStory, this.name, this.thumbernail);

  final ImageProvider<Object> thumbernail;
  final String name;
  final ImageProvider<Object> imageStory;

  String _actualIcon = 'icon';

  final Widget _icon = const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );

  final Widget _iconfilled = const Icon(
    Icons.favorite,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: imageStory,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: thumbernail,
                          radius: 15,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: '', //TODO choose the font
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    label: const Text(''),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to cart'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    child: _actualIcon != 'icon' ? _iconfilled : _icon,
                    onPressed: () {
                      setState(() {
                        _actualIcon == 'icon'
                            ? _actualIcon = 'filledIcon'
                            : _actualIcon = 'icon';
                      });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
