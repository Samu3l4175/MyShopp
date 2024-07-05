import 'package:flutter/material.dart';

class CarsCatalog extends StatefulWidget {
  const CarsCatalog({super.key});

  @override
  State<CarsCatalog> createState() => _CarsCatalogState();
}

class _CarsCatalogState extends State<CarsCatalog> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 1:
              scrollController.jumpTo(0.0);
              break;
            case 2:
              debugPrint('secondo caso');
              break;
            default:
              Navigator.pop(context);
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
        automaticallyImplyLeading: false,
        title: const Text('Cars Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
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
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
