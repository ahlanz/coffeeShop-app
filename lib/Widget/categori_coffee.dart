import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class CategorieCoffee extends StatefulWidget {
  const CategorieCoffee({super.key});

  @override
  State<CategorieCoffee> createState() => _CategorieCoffeeState();
}

class _CategorieCoffeeState extends State<CategorieCoffee> {
  int currentIndex = 0;

  List<String> categories = ['Cappuccino', 'Machiato', 'Latte', 'Kopi Hitam'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 24),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.asMap().entries.map((entry) {
            int index = entry.key;
            String category = entry.value;

            bool isActive = index == currentIndex;
            Color bgColor = isActive ? primaryColor : whiteTextColor;
            TextStyle textStyle = isActive
                ? whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  )
                : primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  );

            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                width: 121,
                margin: const EdgeInsets.only(left: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: bgColor,
                ),
                child: Center(
                  child: Text(
                    category,
                    style: textStyle,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
