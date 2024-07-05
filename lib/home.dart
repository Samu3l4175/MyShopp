import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'dart:math' as math;
import 'package:myshopp/cars_catalog.dart';

int getRandomInt() {
  return math.Random().nextInt(10) + 1;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> getStories() {
    List<Widget> storiesCarousel = [];
    for (var user in getRandomNumberOfStoriesThumbernail()) {
      storiesCarousel.add(const SizedBox(
        width: 15,
      ));
      storiesCarousel.add(user);
    }
    return storiesCarousel;
  }

  TextStyle kTextStyle = const TextStyle(fontSize: 20);

  Set<String> _selected = {'Hypercar'};
  List<Widget> _selectedWidget = [];

  List<Widget> getTop() {
    if (_selected.toString() == '{Hypercar}') {
      _selectedWidget = _topHyper
          .map((e) => Text(
                e,
                style: kTextStyle,
              ))
          .toList();
    } else if (_selected.toString() == '{LMP2}') {
      _selectedWidget = _topLMP2
          .map((e) => Text(
                e,
                style: kTextStyle,
              ))
          .toList();
    } else {
      _selectedWidget = _topLMGT3
          .map((e) => Text(
                e,
                style: kTextStyle,
              ))
          .toList();
    }
    return _selectedWidget;
  }

  final List<String> _topHyper = [
    '50 - Ferrari AF Corse',
    '7 - Toyota Gazoo Racing',
    '51 - Ferrari AF Corse',
    '6 - Porsche Penske Motorsport',
    '8 - Toyota Gazoo Racing',
    '5 - Porsche Penske Motorsport',
    '2 - Cadillac Racing',
    '12 - Hertz Team JOTA',
    '38 - Hertz Team JOTA',
    '63 - Lamborghini Iron Lynx',
  ];

  final List<String> _topLMP2 = [
    '22 - United Autosports',
    '34 - Inter Europol Competition',
    '28 - IDEC Sport',
    '183 - AF Corse',
    '10 - Vector Sport',
    '14 - AO by TF',
    '33 - DKR Engineering',
    '25 - Algarve Pro Racing',
    '65 - Panis Racing',
    '47 - COOL Racing',
  ];

  final List<String> _topLMGT3 = [
    '91 - Manthey EMA',
    '31 - Team WRT',
    '88 - Proton Competition',
    '44 - Proton Competition',
    '85 - Iron Dames',
    '55 - Vista AF Corse',
    '78 - Akkodis ASP Team',
    '155 - Spirit of Race',
    '777 - D\'Station Racing',
    '87 - Akkodis ASP Team',
  ];

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    void updateSelected(Set<String> newSelection) {
      setState(() {
        _selected = newSelection;
      });
    }

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            switch (index) {
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const CarsCatalog();
                    },
                  ),
                );
                break;
              case 2:
                debugPrint('secondo caso');
                break;
              default:
                scrollController.jumpTo(0.0);
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Cars',
              icon: Icon(Icons.directions_car_filled),
            ),
            BottomNavigationBarItem(
              label: 'Liked',
              icon: Icon(
                Icons.favorite,
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
        appBar: AppBar(
          toolbarHeight: 90.0,
          surfaceTintColor: Colors.grey[100],
          title: const Column(
            children: [
              Text(
                '24 hours of Le Mans',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Text(
                '12/06/2024 - 16/06/2024',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 20),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: getStories(),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  height: 120,
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://www.lemans.org/media/cache/api_news_large/assets/fileuploads/65/48/6548a560dc608.jpg',
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    const Text(
                      'Results of the race',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    SegmentedButton(
                      style: const ButtonStyle(
                        visualDensity: VisualDensity(
                          horizontal: 4,
                          vertical: -3,
                        ),
                      ),
                      showSelectedIcon: false,
                      segments: const [
                        ButtonSegment(
                            value: 'Hypercar', label: Text('Hypercar')),
                        ButtonSegment(value: 'LMP2', label: Text('LMP2')),
                        ButtonSegment(value: 'LMGT3', label: Text('LMGT3'))
                      ],
                      selected: _selected,
                      onSelectionChanged: updateSelected,
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: getTop(),
                    ),

                    // SizedBox(
                    //   height: 350,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     shrinkWrap: true,
                    //     itemCount: 5,
                    //     itemBuilder: (context, index) {
                    //       return Padding(
                    //         padding: const EdgeInsets.all(10.0),
                    //         child: database[index],
                    //       );
                    //     },
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
