import 'package:flutter/material.dart';

class TopBrandsGrid extends StatelessWidget {
  const TopBrandsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Top Brands',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 0, 45, 3),
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: const Color.fromARGB(255, 0, 45, 3),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/tjkr8ecmktw7qooy9d0h/NIKE+SHOX+TL.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 185,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 28,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.star, size: 15),
                            SizedBox(width: 2),
                            Text(
                              '4.4',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade200,
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Man's Sneaker",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  "\$126.33 USD",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
