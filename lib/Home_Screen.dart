import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/Product_Detail.dart';
import 'package:e_commerce_app/Product_Detail2.dart';
import 'package:e_commerce_app/Widgets/CustomDisscount.dart';
import 'package:e_commerce_app/Widgets/CustomNewArrival.dart';
import 'package:e_commerce_app/Widgets/CustomPopularItems.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

   
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                Builder(
  builder: (context) => InkWell(
    onTap: () {
      SimpleHiddenDrawerController.of(context).toggle();
    },
    child: CircleAvatar(
      radius: 25,
      backgroundColor: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              height: 2,
              width: 16,
              color: Colors.white,
            ),
            SizedBox(height: 6),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.white,
            ),
            SizedBox(height: 6),
            Container(
              margin: EdgeInsets.only(right: 15),
              height: 2,
              width: 16,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  ),
),


                        Spacer(),
                
                          IconButton(
                            onPressed: () {
                // search action
                print("Search tapped in AppBar");
                            },
                            icon: Icon(Icons.search, color: Colors.black, size: 30),
                          ),
                
                
                        
                  ],
                ),
              ),

              SizedBox(height: 20,),

              

              //================= Deals Carousel =================
              CarouselSlider(
                options: CarouselOptions(
                  height: 220,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: false,
                  viewportFraction: 1.0,
                ),
                items: [
                  "assets/images/disscount01.png",
                  "assets/images/disscount02.png",
                  "assets/images/disscount01.png",
                  "assets/images/disscount02.png",
                ].map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return DiscountWidget(image); // your custom widget
                    },
                  );
                }).toList(),
              ),

              SizedBox(height: 20),

              //================= New Arrivals =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "New Arrivals",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BagProductPage(),
                            ),
                          );
                        },
                        child: CustomNewArrival(
                          "assets/images/newarrival_bag.png",
                          "The Marc Jacobs",
                          "Traveler Tote",
                          "Prize: PKR.5999",
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SneakerProductPage(),
                            ),
                          );
                        },
                        child: CustomNewArrival(
                          "assets/images/newarrival_shoes.png",
                          "Axel Arigato",
                          "Clean 90 Triple Sneakers",
                          "Prize: PKR.7500",
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //================= Popular =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    customPopularItem("assets/images/headphone.png", "Zero HeadPhone", 590),
                    SizedBox(height: 15),
                    customPopularItem("assets/images/popular_shirt.png", "Marlins Shirts", 376),
                    SizedBox(height: 15),
                    customPopularItem("assets/images/newarrival_shoes.png", "Jordan Shoes", 825),
                    SizedBox(height: 15),
                    customPopularItem("assets/images/newarrival_bag.png", "Cucci Bag", 933),
                    SizedBox(height: 15),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
