import 'package:flutter/material.dart';

class ProfilePhotoWidget extends StatelessWidget {
  const ProfilePhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 78,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(Icons.camera_alt_outlined, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
