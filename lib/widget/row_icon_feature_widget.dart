import 'package:flutter/material.dart';

class RowIconFeatureWidget extends StatelessWidget {
  final void Function(int)? onTap;

  const RowIconFeatureWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    List<String> label = ['Shop', 'In-store', 'Rewards', 'Deals', 'Saved'];
    List<IconData> icon = [
      Icons.shopping_bag,
      Icons.shop,
      Icons.fast_rewind_sharp,
      Icons.data_exploration,
      Icons.saved_search,
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            onTap?.call(index);
          },
          child: Column(
            spacing: 5,
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(icon[index]),
              ),
              Text(label[index]),
            ],
          ),
        );
      }),
    );
  }
}
