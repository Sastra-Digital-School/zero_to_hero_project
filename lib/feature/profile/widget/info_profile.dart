import 'package:flutter/material.dart';
import 'package:flutter_zth_first/widget/profile_photo_widget.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 25,
      children: [
        ProfilePhotoWidget(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chamroeun Sithy',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              '@sithy',
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
