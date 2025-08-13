import 'package:flutter/material.dart';
import 'package:flutter_zth_first/widget/compare_card_widget.dart';
import 'package:flutter_zth_first/widget/price_card_widget.dart';
import 'package:flutter_zth_first/widget/process_card_widget.dart';
import 'package:flutter_zth_first/widget/row_icon_feature_widget.dart';
import 'package:flutter_zth_first/widget/search_widget.dart';
import 'package:flutter_zth_first/widget/top_brand_row_icon_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody(context),
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
          spacing: 20,
          children: [
            SearchWidget(),
            RowIconFeatureWidget(),
            CompareCardWidget(),
            PriceCardWidget(),
            ProcessCardWidget(),
            TopBrandRowIconWidget(),
            Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Brands',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 45, 3),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 0, 45, 3),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 25,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(2, (index) {
                    return Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/tjkr8ecmktw7qooy9d0h/NIKE+SHOX+TL.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 28,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 2,
                                  children: [
                                    Icon(Icons.star, size: 15),
                                    Text(
                                      '4.4',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.grey.shade200,
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Man's Sneaker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$126.33 USD",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // get _buildBottomNavigationBar {
  //   return BottomNavigationBar(
  //     currentIndex: 0,
  //     selectedItemColor: Colors.amber,
  //     unselectedItemColor: Colors.grey,
  //     selectedLabelStyle: TextStyle(
  //       color: Colors.amber,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     unselectedLabelStyle: TextStyle(color: Colors.grey),
  //     showSelectedLabels: true,
  //     showUnselectedLabels: true,
  //     items: [
  //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.navigation_rounded),
  //         label: 'Navigate',
  //       ),
  //       BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
  //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
  //     ],
  //   );
  // }
}
