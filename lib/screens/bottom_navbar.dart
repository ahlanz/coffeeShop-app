import 'package:coffee_shop/screens/home_page.dart';
import 'package:coffee_shop/screens/keranjang_page.dart';
import 'package:coffee_shop/screens/notifikasi_page.dart';
import 'package:coffee_shop/screens/suka_page.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();

        case 1:
          return const FavoritePage();

        case 2:
          return const KeranjangPage();

        case 3:
          return const NotifikasiPage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 24),
              child: Image.asset(
                'assets/home_icon.png',
                width: 24,
                color: currentIndex == 0 ? primaryColor : secondaryTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 24),
              child: Image.asset(
                'assets/suka_icon.png',
                width: 24,
                color: currentIndex == 1 ? primaryColor : secondaryTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 24),
              child: Image.asset(
                'assets/keranjang_icon.png',
                width: 24,
                color: currentIndex == 2 ? primaryColor : secondaryTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 24),
              child: Image.asset(
                'assets/notif_icon.png',
                width: 24,
                color: currentIndex == 3 ? primaryColor : secondaryTextColor,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: body(),
    );
  }
}
