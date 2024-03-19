import 'package:flutter/material.dart';
import 'package:nutriplato/fitness/fitness.screen.dart';
import 'package:nutriplato/presentation/screens/plate/plate_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutriplato/search/search.screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'screens/dashboard/dashboard.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _Home();
}

class _Home extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    DashboardScreen(),
    SearchScreen(),
    PlateScreen(),
    FitnessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const FaIcon(FontAwesomeIcons.house),
              title: const Text('Inicio'),
            ),
            SalomonBottomBarItem(
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
              title: const Text('Buscar'),
            ),
            SalomonBottomBarItem(
              icon: const FaIcon(FontAwesomeIcons.plateWheat),
              title: const Text('Plato'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(FontAwesomeIcons.dumbbell),
              title: const Text('Ejercicio'),
            ),
          ],
        ),
      ),
    );
  }
}
