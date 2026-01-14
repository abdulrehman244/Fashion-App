import 'package:e_commerce_app/Login_Screen.dart';
import 'package:e_commerce_app/Welcome_Screen.dart';
import 'package:e_commerce_app/Widgets/CustomProfile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _File1State();
}

class _File1State extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //=======================================================

                // BackIcon and Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 20,
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //============================================================

                // YourProfile Name Image Gmail
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/03/27/13/28/man-2178721_1280.jpg",
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abdul Rehman",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "User@gmail.com",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //=======================================================

                // profile
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      customprofile(
                        Icon(Icons.person, color: Colors.black),
                        "Personal Details",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.shopping_bag, color: Colors.black),
                        "My Order",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.favorite_rounded, color: Colors.black),
                        "My Favorite",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.local_shipping, color: Colors.black),
                        "Shipping Address",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.credit_card, color: Colors.black),
                        "My Card",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.settings, color: Colors.black),
                        "Setting",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //=======================================================
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      customprofile(
                        Icon(Icons.error, color: Colors.black),
                        "FAQs",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                      customprofile(
                        Icon(Icons.privacy_tip, color: Colors.black),
                        "Privacy Policy",
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomeScreen(),
                            ),
                          );
                        },
                        child: customprofile(
                          Icon(Icons.logout),
                          "Logout",
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
