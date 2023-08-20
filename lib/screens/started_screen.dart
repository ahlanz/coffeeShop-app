import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget background() {
      return Center(
        child: Image.asset('assets/banner_1.png'),
      );
    }

    Widget button() {
      return Container(
        width: double.infinity,
        height: 62,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Get Started',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget bodyContent() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 317.2,
        color: const Color(0xff000000),
        child: Column(
          children: [
            SizedBox(
              width: 315,
              child: Text(
                ' Coffee so good, your taste buds will love it.',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontSize: 34,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 315,
              child: Text(
                'The best grain, the finest roast, the powerful flavor.',
                textAlign: TextAlign.center,
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            button()
          ],
        ),
      );
    }

    Widget content() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            background(),
            bodyContent(),
          ],
        ),
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
