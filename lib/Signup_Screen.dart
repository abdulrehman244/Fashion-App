import 'package:e_commerce_app/successful_login_Screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image Container
              Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/loginscreen.png",
                  fit: BoxFit.cover,
                ),
              ),

              // Second Container
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Rubix",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Create A New Account",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      SizedBox(height: 40),

                      // User Name
                      Text(
                        "User Name",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your User Name",
                          suffixIcon: Icon(
                            Icons.check_circle_sharp,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Email
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                        ),
                      ),
                      SizedBox(height: 15),

                      // Password
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          suffixIcon: Icon(
                            Icons.check_circle_sharp,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Confirm Password
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Confirm Password",
                          suffixIcon: Icon(
                            Icons.check_circle_sharp,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      //Terms Checkbox Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            color: Colors.grey[600],
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "By creating an account you agree",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "to our terms & conditions",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),

                      // Sign Up Button
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginSuccessfull(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
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
