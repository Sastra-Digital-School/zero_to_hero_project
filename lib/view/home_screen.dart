import 'package:flutter/material.dart';
import 'package:flutter_zth_first/widget/compare_card_widget.dart';
import 'package:flutter_zth_first/widget/price_card_widget.dart';
import 'package:flutter_zth_first/widget/process_card_widget.dart';
import 'package:flutter_zth_first/widget/row_icon_feature_widget.dart';
import 'package:flutter_zth_first/widget/search_widget.dart';
import 'package:flutter_zth_first/widget/top_bards_warp_widget.dart';
import 'package:flutter_zth_first/widget/top_brand_row_icon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _currentIndex == 0
        ? Scaffold(
            appBar: _buildAppBar,
            body: _buildBody(context),
            drawer: _buildDrawer(context),
            bottomNavigationBar: _buildBottomNavigationBar,
          )
        : Scaffold(
            backgroundColor: _currentIndex == 1
                ? Colors.white
                : _currentIndex == 2
                ? Colors.blue
                : Colors.amber,
            bottomNavigationBar: _buildBottomNavigationBar,
          );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.cyan.shade200,
      centerTitle: true,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(Icons.dashboard),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(Icons.notifications),
        ),
        SizedBox(width: 20),
      ],
      title: Text('FLEXIPAY', style: TextStyle(fontWeight: FontWeight.bold)),
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

  _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.35],
          colors: [
            Colors.cyan.shade200,
            const Color.fromARGB(255, 237, 237, 237),
          ],
        ),
      ),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          spacing: 25,
          children: [
            SearchWidget(),
            RowIconFeatureWidget(),
            CompareCardWidget(),
            PriceCardWidget(),
            ProcessCardWidget(),
            TopBrandRowIconWidget(),
            TopBardsWarpWidget(),
          ],
        ),
      ),
    );
  }

  get _buildBottomNavigationBar {
    List<Icon> icon = [
      Icon(Icons.home),
      Icon(Icons.save),
      Icon(Icons.money),
      Icon(Icons.person),
    ];
    List<String> label = ['Home', 'Saved', 'Money', 'Profile'];
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
