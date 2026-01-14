import 'package:e_commerce_app/successful_login_Screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/loginscreen.png",
                  fit: BoxFit.cover,
                ),
              ),
          
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontFamily: "Rubix",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Please Login and SignUp to continue our app",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Gmail",
                          suffixIcon: Icon(
                            Icons.check_circle_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                  
                      SizedBox(height: 20),
                  
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          suffixIcon: Icon(
                            Icons.check_circle_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                  
                      SizedBox(height: 50),
                  
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginSuccessfull(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                            horizontal: 140,
                            vertical: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 9),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                  
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("or"),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                  
                      SizedBox(height: 1),
                  
                      // Facebook textField
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[800],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              "Conttinue With",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                  
                      //=====================================================
                      // google textField
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.g_mobiledata_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Conttinue With",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                  
                      // apple textField
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.apple, color: Colors.black),
                            SizedBox(width: 4),
                            Text(
                              "Continue With",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Apple",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
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
