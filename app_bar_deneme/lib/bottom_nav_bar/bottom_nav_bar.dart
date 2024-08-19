import 'package:flutter/material.dart';

import '../cart/cart_button.dart';
import 'bottom_nav_bar_pages/favorite/favorite.dart';
import 'bottom_nav_bar_pages/home/home.dart';
import 'bottom_nav_bar_pages/profile/profile.dart';
import 'bottom_nav_bar_pages/search/search.dart';
import 'nav_item.dart';

final GlobalKey<_BottomNavBarState> bottomNavBarKey =
    GlobalKey<_BottomNavBarState>();

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentAppPageId = 0;
  final List<Widget> bottomAppBarPages = [
    HomePage(),
    const Search(),
    const Favorite(),
    const Profile(),
  ];

  int countCartItem = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  void _onItemTapped(int index) {
    setState(() {
      currentAppPageId = index;
    });
  }

  void addItemToCart() {
    setState(() {
      countCartItem++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: bottomAppBarPages[currentAppPageId],
      ),
      floatingActionButton: CartButton(
        cartItemCount: countCartItem,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    icon: Icons.home,
                    label: 'Home',
                    index: 0,
                    currentAppPageId: currentAppPageId,
                    onItemTapped: _onItemTapped,
                  ),
                  NavItem(
                    icon: Icons.search,
                    label: 'Search',
                    index: 1,
                    currentAppPageId: currentAppPageId,
                    onItemTapped: _onItemTapped,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  NavItem(
                    icon: Icons.favorite,
                    label: 'Favorite',
                    index: 2,
                    currentAppPageId: currentAppPageId,
                    onItemTapped: _onItemTapped,
                  ),
                  NavItem(
                    icon: Icons.person,
                    label: 'Profile',
                    index: 3,
                    currentAppPageId: currentAppPageId,
                    onItemTapped: _onItemTapped,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void addToCart() {
  bottomNavBarKey.currentState?.addItemToCart();
}
