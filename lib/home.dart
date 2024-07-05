import 'package:flutter/material.dart';
import 'package:myshopp/reels/reels_database.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'dart:math' as math;

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

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    const TextStyle kTextStyleReminder = TextStyle(
      fontSize: 15,
    );

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            switch (index) {
              case 1:
                debugPrint('primo caso');
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
                // Column(
                //   children: [
                //     SingleChildScrollView(
                //       scrollDirection: Axis.horizontal,
                //       child: Row(
                //         children: getStories(),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //   ],
                // ),
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
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: SearchAnchor(
                    builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 0,
                          ),
                        ),
                        leading: const Icon(Icons.search),
                        onTap: () => controller.openView(),
                        onChanged: (_) => controller.openView(),
                      );
                    },
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      //TODO aggiusta la search bar suggestion
                      return List<ListTile>.generate(
                        5,
                        (index) {
                          final String selectedItem = 'prova $index';
                          return ListTile(
                            title: Text(selectedItem),
                            onTap: () {
                              controller.closeView(selectedItem);
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Cars Carousel',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: database[index],
                          );
                        },
                      ),
                    )
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
