import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavbar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: GNav(
          color: Colors.grey,
          activeColor: Colors.black,
          tabActiveBorder: Border.all(
            color: Colors.black,
          ),
          tabBackgroundColor: Colors.grey,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 50,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'cart',
            ),
          ],
        ),
      ),
    );
  }
}
