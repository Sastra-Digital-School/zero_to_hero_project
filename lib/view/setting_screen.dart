import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Theme'),
            onTap: () {
              // navigate to theme setting screen
            },
          ),
        ],
      ),
    );
  }
}
