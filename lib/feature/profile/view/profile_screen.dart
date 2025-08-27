import 'package:flutter/material.dart';
import 'package:flutter_zth_first/controller/profile_controller.dart';
import 'package:flutter_zth_first/feature/profile/widget/info_profile.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final controler = Get.put(ProfileController());
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('My Profile', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
    );
  }

  get _buildBody {
    return Column(
      children: [
        InfoProfile(),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(controler.icon[index]),
                        title: Text(
                          controler.title[index],
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.black12),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(controler.icon[index + 2]),
                        title: Text(
                          controler.title[index + 2],
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.black12),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(controler.icon[index + 5]),
                        title: Text(
                          controler.title[index + 5],
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
