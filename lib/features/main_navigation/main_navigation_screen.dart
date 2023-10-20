import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nacipe/features/home_screen/home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: HomeScreen(),
    ),
    const Center(
      child: Text("Info"),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onTap,
          destinations: const [
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.house),
              label: "Home",
            ),
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Info",
            ),
          ],
        ));
  }
}
