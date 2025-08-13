import 'package:flutter/material.dart';

class ProcessCardWidget extends StatelessWidget {
  const ProcessCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          List<String> label = [
            'All orders',
            'Pending',
            'Delivered',
            'Cancelled',
          ];
          List<IconData> icon = [
            Icons.list,
            Icons.pending_actions,
            Icons.delivery_dining,
            Icons.cancel,
          ];
          List<Color> color = [
            Colors.blue.shade200,
            Colors.amber.shade200,
            Colors.green.shade200,
            Colors.red.shade200,
          ];
          return Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon[index], color: color[index]),
              ),
              Text(
                label[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          );
        }),
      ),
    );
  }
}
