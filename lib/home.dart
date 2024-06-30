import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myshopp/stories/list_stories.dart';
import 'package:myshopp/menubar_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  children: dummyStories,
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
