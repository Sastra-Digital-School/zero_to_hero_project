import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      appBar: _buildAppBar,
      body: _buildBody,
      // bottomNavigationBar: _buildBottomNavigationBar,
      drawer: _buildDrawer(context),
    );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.cyan.shade200,
      centerTitle: true,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: CircleAvatar(radius: 25, child: Icon(Icons.dashboard)),
      ),
      actions: [
        CircleAvatar(radius: 25, child: Icon(Icons.notifications)),
        SizedBox(width: 20),
      ],
      title: Text('FLEXIPAY'),
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

  get _buildBody {
    List<String> label = ['Shop', 'In-store', 'Rewards', 'Deals', 'Saved'];
    List<IconData> icon = [
      Icons.shopping_bag,
      Icons.shop,
      Icons.fast_rewind_sharp,
      Icons.data_exploration,
      Icons.saved_search,
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Column(
        spacing: 20,
        children: [
          SearchBar(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(EdgeInsets.only(left: 20)),
            elevation: WidgetStatePropertyAll(0),
            leading: Icon(Icons.search),
            hintText: 'Search something',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              return Column(
                spacing: 5,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(icon[index]),
                  ),
                  Text(label[index]),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

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
