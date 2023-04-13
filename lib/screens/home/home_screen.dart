import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              style: IconButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).highlightColor,
              ),
              icon: const Icon(Ionicons.menu),
            ),
          );
        }),
        title: const Text('eGrocery'),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).highlightColor,
            ),
            icon: const Icon(Ionicons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Image.network('https://i.imgur.com/8hBIsS5.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Pack',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View All'),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Column(
        children: [
          Text('Drawer'),
        ],
      ),
    );
  }
}
