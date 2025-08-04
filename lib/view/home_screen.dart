import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavigationBar,
      drawer: _buildDrawer(context),
    );
  }

  get _buildAppBar {
    return AppBar(
      centerTitle: true,
      title: Text('Home'),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 30),
                Column(
                  children: [Text('Drawer Header'), Text('Drawer Header')],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }

  get _buildBody => Container(
    color: Colors.amber,
    child: Column(
      children: [
        Container(color: Colors.cyan, height: 80),
        Container(color: Colors.grey, height: 168),
        Expanded(child: Container(color: Colors.blue)),
      ],
    ),
  );

  get _buildBottomNavigationBar {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.navigation_rounded),
          label: 'Navigate',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ],
    );
  }
}
