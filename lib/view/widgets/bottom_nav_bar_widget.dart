import 'package:flutter/material.dart';

import '../../data/bottom_nav_ind.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPage,
      builder: (context, selectedPageValue, child) {
        return NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (value) {
          selectedPage.value = value;
        },
          selectedIndex: selectedPageValue,
        );
      }
    );
  }
}
