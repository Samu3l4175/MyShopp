import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'package:myshopp/menubar_button.dart';
import 'package:myshopp/search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  List<Widget> getStories() {
    List<Widget> storiesCarousel = [];
    for (var user in dummyStories) {
      storiesCarousel.add(const SizedBox(
        width: 15,
      ));
      storiesCarousel.add(user);
    }
    return storiesCarousel;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MyShopp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            switch (index) {
              case 1:
                showModalBottomSheet(
                  context: context,
                  builder: (builder) {
                    return Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 50),
                            child: SearchBarApp(),
                          ),
                        ],
                      ),
                    );
                  },
                );
                break;
              case 2:
                print('secondo caso');
                break;
              case 3:
                print('terzo caso');
                break;
              case 4:
                print('quarto caso');
                break;
              default:
                print('caso default');
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
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(
                Icons.add,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(
                Icons.menu,
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: getStories(),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuButton(function: () {}, text: 'Live'),
                  MenuButton(function: () {}, text: 'Reels'),
                  MenuButton(function: () {}, text: 'MarketPlace'),
                  MenuButton(function: () {}, text: 'Cupon'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
