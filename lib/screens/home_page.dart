import 'package:coffee_shop/Widget/categori_coffee.dart';
import 'package:coffee_shop/Widget/product_coffee.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Stack(
          children: [
            Container(
              height: 280,
              padding: EdgeInsets.only(
                top: 19,
                left: defaulMargin,
                right: defaulMargin,
              ),
              color: bgcolor2,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: secondaryTextStyle.copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                'Bilzen, Tanjungbalai',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 14, fontWeight: semiBold),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                color: bgcolor1,
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  //Note: Searching Bar
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: bgcolor1),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        hintText: 'Search coffee',
                        border: InputBorder.none,
                        hintStyle: secondaryTextStyle,
                        suffixIcon: Container(
                          margin: const EdgeInsetsDirectional.all(4),
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/menu_search.png',
                              width: 20,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: bgcolor1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 180, left: 30, right: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/banner_2.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.red),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 4,
                            ),
                            child: Text(
                              'Promo',
                              style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Buy one get one FREE',
                            style: whiteTextStyle.copyWith(
                              fontSize: 32,
                              fontWeight: semiBold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categoryBody() {
      return CategorieCoffee();
    }

    Widget gridMenu() {
      return ProductCoffee();
    }

    Widget content() {
      return ListView(
        children: [
          header(),
          categoryBody(),
          gridMenu(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      body: content(),
    );
  }
}
