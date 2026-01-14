import 'package:e_commerce_app/Login_Screen.dart';
import 'package:e_commerce_app/Signup_Screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset("assets/images/welcome.png",fit: BoxFit.cover,),
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 150),
                      ),
                      child: Text("Login"),
                    ),

                    SizedBox(height: 10),

                    OutlinedButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                        
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 140),
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: Text("Sign Up"),
                    ),
                ],
              ),
            )
          ],
        )
        ),
    );
  }
}