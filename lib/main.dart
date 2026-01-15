import 'package:e_commerce_app/Card_Screen.dart';
import 'package:e_commerce_app/Home_Screen.dart';
import 'package:e_commerce_app/Notification_Screen.dart';
import 'package:e_commerce_app/Profile_Screen.dart';
import 'package:e_commerce_app/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main(){ 
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
    );
  }
}

//=======================================================

// Bottom Navigation

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    CardScreen(),
    NotificationScreen(),
    ProfileScreen()

  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.shopping_bag,
    Icons.notifications,
    Icons.person,
  ];

  final List<String> labels = [
    "Home",
    "Cart",
    "Notify",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: screens[selectedIndex],

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              bool isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icons[index],
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 8),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}