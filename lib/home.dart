import 'package:flutter/material.dart';
import 'package:myshopp/reels_database.dart';
import 'package:myshopp/reels_thumbernail.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'package:myshopp/menubar_button.dart';
import 'package:myshopp/search_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
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
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Live',
              icon: Icon(MdiIcons.broadcast),
            ),
            const BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
            const BottomNavigationBarItem(
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
              ListView.builder(
                itemCount: database.length,
                itemBuilder: (BuildContext context, int index) {
                  return database[index];
                },
                scrollDirection: Axis.horizontal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
