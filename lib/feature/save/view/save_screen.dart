import 'package:flutter/material.dart';
import 'package:flutter_zth_first/feature/personal_detail/models/personal_model.dart';

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
      expandedHeight: 68,
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
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
      ),
    );
  }

  get _buildBody {
    String name = 'Chamreoun Sithy';
    return SliverList.builder(
      itemCount: 200,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) =>
            //         PersonalDetailScreen(name: name, email: 'admin@admin.com'),
            //   ),
            // );

            final valueNew = PersonalModel(
              id: index,
              name: 'Sithy168',
              email: 'admin168@admin.com',
            );

            // final value = {
            //   'name': 'Chamreoun Sithy',
            //   'email': 'admin@admin.com',
            // };

            Navigator.of(context).pushNamed('/personal', arguments: valueNew);
          },
          child: Container(
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
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Male', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
        );
      },
    );
  }
}
