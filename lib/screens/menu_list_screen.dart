import 'package:flutter/material.dart';
import 'food_details_screen.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({super.key});

  final List<Map<String, String>> menuItems = const [
    {'name': 'Burger', 'image': 'assets/images/burger.png'},
    {'name': 'Pizza', 'image': 'assets/images/pizza.png'},
    {'name': 'Pasta', 'image': 'assets/images/pasta.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                Image.asset(menuItems[index]['image']!, width: 50, height: 50),
            title: Text(menuItems[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailsScreen(
                    name: menuItems[index]['name']!,
                    image: menuItems[index]['image']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
