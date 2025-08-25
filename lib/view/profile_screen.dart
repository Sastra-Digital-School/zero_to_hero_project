import 'package:flutter/material.dart';
import 'package:flutter_zth_first/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final controler = Get.put(ProfileController());
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody);
  }

  get _buildBody {
    return Center(
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Obx(
            () => Text(
              '${controler.index.value}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  controler.indexIncrement();
                },
                shape: CircleBorder(),
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  controler.decrement();
                },
                shape: CircleBorder(),
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
