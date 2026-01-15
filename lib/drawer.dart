import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      disableAppBarDefault: true,
      backgroundColorMenu: Colors.grey,

      // 🌈 Gradient background
      // backgroundColorAppBar: Colors.transparent,
      slidePercent: 60,
      contentCornerRadius: 25,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 20,
          offset: Offset(5, 5),
        )
      ],

      screens: [
        _drawerItem(
          title: "Home",
          icon: Icons.home_rounded,
        ),
        _drawerItem(
          title: "Cart",
          icon: Icons.shopping_cart_rounded,
        ),
        _drawerItem(
          title: "Notifications",
          icon: Icons.notifications_rounded,
        ),
        _drawerItem(
          title: "Profile",
          icon: Icons.person_rounded,
        ),
        _drawerItem(
          title: "Logout",
          icon: Icons.logout_rounded,
        ),
      ],
    );
  }

  /// 🔥 Custom Drawer Item
  ScreenHiddenDrawer _drawerItem({
    required String title,
    required IconData icon,
  }) {
    return ScreenHiddenDrawer(
      ItemHiddenMenu(
        name: title,
        baseStyle: TextStyle(
          color: Colors.white.withOpacity(0.8),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        selectedStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        colorLineSelected: Colors.white,
        // icon: Icon(icon, color: Colors.white),
      ),
      CustomBottomNavigationBar(),
    );
  }
}
