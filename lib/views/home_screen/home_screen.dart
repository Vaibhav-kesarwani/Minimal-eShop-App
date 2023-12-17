import 'package:ecommerceapp/consts/colors.dart';
import 'package:ecommerceapp/consts/images.dart';
import 'package:ecommerceapp/consts/strings.dart';
import 'package:ecommerceapp/consts/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: categories,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account,
      ),
    ];

    var navBody = [
      
    ];

    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: redColor,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        items: navbarItem,
      ),
    );
  }
}
