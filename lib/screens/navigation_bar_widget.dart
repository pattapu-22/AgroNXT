import 'package:flutter/material.dart';
import '../utils/app_theme.dart';

class NavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const NavigationBarWidget({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
        BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: 'Market'),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit), label: 'Cold Storage'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Alerts'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppTheme.primaryColor,
      onTap: onTap,
      unselectedItemColor: Colors.grey, // Changed to light green
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
