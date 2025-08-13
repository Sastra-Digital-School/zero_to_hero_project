import 'package:flutter/material.dart';

class CompareCardWidget extends StatelessWidget {
  const CompareCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        debugPrint('object');
      },
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 5,
            left: 8,
            child: Container(
              height: 90,
              width: width - 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                  255,
                  1,
                  49,
                  2,
                ).withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text('data'),
            ),
          ),
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 1, 49, 2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.shopping_bag, color: Colors.white),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tap to Compare Prices',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Compare prices in one tap!',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
