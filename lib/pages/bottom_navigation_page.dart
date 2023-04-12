import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  var pages = [
    Container(color: Colors.deepOrange),
    Container(color: Colors.deepPurple),
    Container(color: Colors.pink),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Wall')),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.feed),
            icon: Icon(Icons.feed_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline),
            label: 'Favs',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Conf',
          ),
        ],
      ),
    );
  }
}
