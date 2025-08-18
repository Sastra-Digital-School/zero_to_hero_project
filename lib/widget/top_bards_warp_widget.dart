import 'package:flutter/material.dart';

class TopBardsWarpWidget extends StatefulWidget {
  const TopBardsWarpWidget({super.key});

  @override
  State<TopBardsWarpWidget> createState() => _TopBardsWarpWidgetState();
}

class _TopBardsWarpWidgetState extends State<TopBardsWarpWidget> {
  int _currentLength = 0;
  bool _isSeeAll = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentLength = 2;
    });
  }

  void _setSeeAll(List<String> image) {
    if (_isSeeAll == false) {
      setState(() {
        _currentLength = image.length;
        _isSeeAll = true;
      });
    } else {
      setState(() {
        _currentLength = 2;
        _isSeeAll = false;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/tjkr8ecmktw7qooy9d0h/NIKE+SHOX+TL.png',
      'https://i5.walmartimages.com/seo/Htcenly-Running-Shoes-Men-Fashion-Sneakers-Casual-Walking-Shoes-Sport-Athletic-Shoes-Lightweight-Breathable-Comfortable_4114141f-7d26-4dd7-933d-babc24080395.516ad145e1a1d8d82a801ac48231950d.jpeg',
      'https://redtape.com/cdn/shop/files/RSO4034_1_40cd841c-11dc-4c78-ab85-bfad034e31fe.jpg?v=1754292783',
      'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/tjkr8ecmktw7qooy9d0h/NIKE+SHOX+TL.png',
      'https://i5.walmartimages.com/seo/Htcenly-Running-Shoes-Men-Fashion-Sneakers-Casual-Walking-Shoes-Sport-Athletic-Shoes-Lightweight-Breathable-Comfortable_4114141f-7d26-4dd7-933d-babc24080395.516ad145e1a1d8d82a801ac48231950d.jpeg',
      'https://redtape.com/cdn/shop/files/RSO4034_1_40cd841c-11dc-4c78-ab85-bfad034e31fe.jpg?v=1754292783',
    ];

    List<String> label = [
      'Nike',
      'Adidas',
      'New Balance',
      'Puma',
      'Under Armour',
      'Asics',
    ];
    List<double> price = [120, 150, 200, 500, 200, 300];

    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Brands',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 45, 3),
              ),
            ),
            GestureDetector(
              onTap: () {
                _setSeeAll(image);
              },
              child: Text(
                'See All',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: const Color.fromARGB(255, 0, 45, 3),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 25,
          runSpacing: 25,
          alignment: WrapAlignment.spaceBetween,
          children: List.generate(_currentLength, (index) {
            return Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 185,
                  width: 185,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(image[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
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
                          spacing: 2,
                          children: [
                            Icon(Icons.star, size: 15),
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
                        child: Icon(Icons.favorite_border_rounded, size: 15),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Man's ${label[index]}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "\$${price[index].toStringAsFixed(2)} USD",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
