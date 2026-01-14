import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

class LoginSuccessfull extends StatelessWidget {
  const LoginSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset("assets/images/successful.png"),
              ),

              Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 13),
                    ),
                    child: Text(
                      "Start Shopping",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
