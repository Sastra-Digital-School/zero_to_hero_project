import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {
              // navigate to language setting screen
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LanguageSettingScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Theme'),
            trailing: Switch(
              value: _isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
            onTap: () {
              // toggle theme
            },
          ),
        ],
      ),
    );
  }
}

class LanguageSettingScreen extends StatefulWidget {
  const LanguageSettingScreen({super.key});

  @override
  State<LanguageSettingScreen> createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {
  final List<Locale> _locales = [Locale('en', 'US'), Locale('zh', 'CN')];

  Locale? _selectedLocale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Language')),
      body: ListView.builder(
        itemCount: _locales.length,
        itemBuilder: (context, index) {
          final locale = _locales[index];
          return RadioListTile<Locale>(
            value: locale,
            groupValue: _selectedLocale,
            onChanged: (value) {
              setState(() {
                _selectedLocale = value;
              });
            },
            title: Text('${locale.languageCode}_${locale.countryCode}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // set selected locale to system
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
