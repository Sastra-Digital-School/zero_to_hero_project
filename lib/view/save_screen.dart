import 'package:flutter/material.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildCustomScrollView);
  }

  get _buildCustomScrollView =>
      CustomScrollView(slivers: [_buildAppBar, _buildBody]);

  get _buildAppBar {
    return SliverAppBar(
      title: Text(
        'Saved',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.menu, color: Colors.white),
      centerTitle: true,
      expandedHeight: 150,
      actions: [
        Icon(Icons.search, color: Colors.white),
        SizedBox(width: 20),
      ],
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, const Color.fromARGB(255, 0, 71, 128)],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        title: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 130),
          child: Column(children: [SearchBar(hintText: 'Search')]),
        ),
      ),
    );
  }

  get _buildBody {
    return SliverList.builder(
      itemCount: 200,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.only(left: 10, right: 20),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chamreoun Sithy',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Male', style: TextStyle(fontSize: 16)),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        );
      },
    );
  }
}
