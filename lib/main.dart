import 'package:coffe_cycle/screens/home_screen.dart';
import 'package:coffe_cycle/screens/profile_screen.dart';
import 'package:coffe_cycle/screens/info_page.dart';
import 'package:coffe_cycle/shared_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeCycleApp());
}

class CoffeeCycleApp extends StatelessWidget {
  const CoffeeCycleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
    // State class for BottomNavigation. Manages the selected index and screen.
  
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const InfoPage(),
  ];

  void _onItemTapped(int index) {
    // Called when a bottom navigation item is tapped
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], 
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, 
      ),
    );
  }
}
