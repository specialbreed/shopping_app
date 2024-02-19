import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar ({required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 15,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home,
          text: 'Shop',
          ),
          GButton(icon: Icons.shopping_bag_rounded,
          text: 'Cart',
          ),
      ],
      ),
    );
  }
}

