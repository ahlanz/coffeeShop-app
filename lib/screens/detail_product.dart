import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryTextColor,
          ),
        ),
        elevation: 0,
        title: Text(
          'Detail',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_fav.png',
              width: 24,
            ),
          )
        ],
      );
    }


    Widget content(){
      return Container();
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
