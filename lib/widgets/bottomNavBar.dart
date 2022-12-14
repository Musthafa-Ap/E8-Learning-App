import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuox_project/my_home_page.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, value, child) {
        return BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.white),
            onTap: (value) {
              selectedIndex.value = value;
              selectedIndex.notifyListeners();
            },
            currentIndex: selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                icon:
                    Icon(value == 0 ? Icons.star : Icons.star_outline_outlined),
                label: "Featured",
              ),
              BottomNavigationBarItem(
                  icon: Icon(value == 1
                      ? CupertinoIcons.search_circle_fill
                      : Icons.search_outlined),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(value == 2
                      ? Icons.play_circle
                      : Icons.play_circle_outlined),
                  label: "My learning"),
              BottomNavigationBarItem(
                  icon: Icon(value == 3
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(value == 4
                      ? Icons.account_circle
                      : Icons.account_circle_outlined),
                  label: "Account")
            ]);
      },
    );
  }
}
