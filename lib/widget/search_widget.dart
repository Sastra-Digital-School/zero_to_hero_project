import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      padding: WidgetStatePropertyAll(EdgeInsets.only(left: 20)),
      elevation: WidgetStatePropertyAll(0),
      leading: Icon(Icons.search),
      hintText: 'Search something',
    );
  }
}
