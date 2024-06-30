import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.image});

  final ImageProvider<Object> image;

  @override
  // ignore: no_logic_in_create_state
  State<StoryPage> createState() => _StoryPageState(image);
}

class _StoryPageState extends State<StoryPage> {
  _StoryPageState(this.image);

  final ImageProvider<Object> image;

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
                  image: image,
                ),
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
