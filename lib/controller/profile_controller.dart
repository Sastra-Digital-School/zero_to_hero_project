import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  List<String> title = [
    'Favorites',
    'Downloads',
    'Language',
    'Location',
    'Subscription',
    'Clear cache',
    'Clear history',
    'Logout',
  ];
  List<IconData> icon = [
    Icons.favorite_border_outlined,
    Icons.download,
    Icons.language,
    Icons.location_on,
    Icons.subscriptions,
    Icons.delete_outline,
    Icons.history,
    Icons.logout,
  ];
}
