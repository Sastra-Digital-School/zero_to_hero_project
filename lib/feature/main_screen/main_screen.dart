import 'package:flutter/material.dart';
import 'package:flutter_zth_first/core/routes/routes.dart';
import 'package:flutter_zth_first/feature/home/view/home_screen.dart';
import 'package:flutter_zth_first/feature/profile/view/profile_screen.dart';
import 'package:flutter_zth_first/feature/save/view/save_screen.dart';

class MainScreen extends StatefulWidget {
  final int initialIndex;
  const MainScreen({super.key, this.initialIndex = 0});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentIndex;

  static const _labels = ['Home', 'Saved', 'Money', 'Profile'];
  static const _tabRoutes = ['/home', '/save', '/money', '/profile'];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex.clamp(0, _labels.length - 1);
  }

  void _go(int index) {
    if (index == _currentIndex) return;
    setState(() => _currentIndex = index);

    Navigator.of(context).pushReplacement(
      NoAnimationPageRoute(
        settings: RouteSettings(name: _tabRoutes[index]),
        builder: (_) => MainScreen(initialIndex: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screens = <Widget>[
      const HomeScreen(),
      const SaveScreen(),
      Center(child: Text(_labels[2])),
      ProfileScreen(),
    ];

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.cyan,
        onTap: _go,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Money'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
