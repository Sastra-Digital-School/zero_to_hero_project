import 'package:flutter/material.dart';
import 'package:flutter_zth_first/config/theme/app_colors.dart';
import 'package:flutter_zth_first/core/routes/app_routes.dart';
import 'package:flutter_zth_first/feature/personal_detail/view/personal_detail_screen.dart';
import 'package:flutter_zth_first/widget/compare_card_widget.dart';
import 'package:flutter_zth_first/widget/price_card_widget.dart';
import 'package:flutter_zth_first/widget/process_card_widget.dart';
import 'package:flutter_zth_first/widget/row_icon_feature_widget.dart';
import 'package:flutter_zth_first/widget/search_widget.dart';
import 'package:flutter_zth_first/widget/top_bards_warp_widget.dart';
import 'package:flutter_zth_first/widget/top_brand_row_icon_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        // appBar: _buildAppBar,
        body: _buildBody(context),
        drawer: _buildDrawer(context),
      ),
    );
  }

  // get _buildAppBar {
  //   return AppBar(
  //     backgroundColor: Colors.cyan.shade200,
  //     centerTitle: true,
  //     leadingWidth: 70,
  //     leading: Padding(
  //       padding: const EdgeInsets.only(left: 20),
  //       child: CircleAvatar(
  //         backgroundColor: Colors.white,
  //         radius: 25,
  //         child: Icon(Icons.dashboard),
  //       ),
  //     ),
  //     actions: [
  //       CircleAvatar(
  //         backgroundColor: Colors.white,
  //         radius: 25,
  //         child: Icon(Icons.notifications),
  //       ),
  //       SizedBox(width: 20),
  //     ],
  //     title: Text('FLEXIPAY', style: TextStyle(fontWeight: FontWeight.bold)),
  //   );
  // }

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
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          padding: EdgeInsets.only(bottom: 100),
          child: Column(
            spacing: 25,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(Icons.dashboard, color: AppColors.onSurface),
                  ),
                  Text(
                    'FLEXIPAY',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.onSurface,
                    ),
                  ),
                ],
              ),
              SearchWidget(),
              RowIconFeatureWidget(
                onTap: (index) {
                  switch (index) {
                    case 0:
                      Get.to(
                        PersonalDetailScreen(),
                        arguments: {
                          'name': 'Sithy168',
                          'email': 'admin@admin.com',
                        },
                      );
                      break;
                    case 1:
                      Get.toNamed(
                        '/personal',
                        arguments: {
                          'name': 'Sithy168',
                          'email': 'admin@admin.com',
                        },
                      );
                      break;
                    case 2:
                      RouteView.save.go(
                        arguments: {
                          'name': 'Sithy168',
                          'email': 'admin@admin.com',
                        },
                      );
                      break;
                    case 3:
                      Navigator.pushNamed(context, '/deals');
                      break;
                    case 4:
                      Navigator.pushNamed(context, '/saved');
                      break;
                  }
                },
              ),
              CompareCardWidget(),
              PriceCardWidget(),
              ProcessCardWidget(),
              TopBrandRowIconWidget(),
              TopBardsWarpWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
