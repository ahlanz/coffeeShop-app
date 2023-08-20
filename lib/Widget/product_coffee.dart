import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCoffee extends StatelessWidget {
  List<Map<String, dynamic>> item = [
    {
      'gambar': 'assets/coffee_1.png',
      'name': 'Cappucino',
      'rating': 4.9,
      'harga': 100000,
    },
    {
      'gambar': 'assets/coffee_1.png',
      'name': 'Arabika',
      'rating': 4.4,
      'harga': 190000,
    },
    {
      'gambar': 'assets/coffee_1.png',
      'name': 'Luwak White Coffee',
      'rating': 4.3,
      'harga': 150000,
    },
    {
      'gambar': 'assets/coffee_1.png',
      'name': 'Arabika Gayo',
      'rating': 4.1,
      'harga': 170000,
    },
    {
      'gambar': 'assets/coffee_1.png',
      'name': 'Torabika',
      'rating': 4.2,
      'harga': 130000,
    },
  ];

  ProductCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: item.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          mainAxisExtent: 315,
        ),
        itemBuilder: (context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            child: Container(
              width: 149,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        '${item[index]['gambar']}',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/rating.png',
                              width: 10,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              '${item[index]['rating']}',
                              style: whiteTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: semiBold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '${item[index]['name']}',
                    overflow: TextOverflow.ellipsis,
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'with Chocolate',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rp ${item[index]['harga']}',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/button_add.png',
                        width: 32,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
