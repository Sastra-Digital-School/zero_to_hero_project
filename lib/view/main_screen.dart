import 'package:flutter/material.dart';
import 'package:flutter_zth_first/view/home_screen.dart';
import 'package:flutter_zth_first/view/save_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<String> label = ['Home', 'Saved', 'Money', 'Profile'];

  @override
  Widget build(BuildContext context) {
    List screen = [
      HomeScreen(),
      SaveScreen(),
      Center(child: Text(label[2])),
      Center(child: Text(label[3])),
    ];

    return Scaffold(
      body: screen[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  get _buildBottomNavigationBar {
    List<Icon> icon = [
      Icon(Icons.home),
      Icon(Icons.save),
      Icon(Icons.money),
      Icon(Icons.person),
    ];

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.cyan,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: List.generate(icon.length, (index) {
        return BottomNavigationBarItem(icon: icon[index], label: label[index]);
      }),
    );
  }
}
