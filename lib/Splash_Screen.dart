// import 'dart:async';
// import 'package:e_commerce_app/onboarding_view.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     Timer(Duration(seconds: 2), () {
//       Navigator.pushReplacement<void, void>(
//         context,
//         MaterialPageRoute<void>(
//           builder: (BuildContext context) => OnboardingView(),
//         ),
//       );
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.black,
        
//           height: double.infinity,
//           width: double.infinity,
//           child: Image.asset("assets/images/splash.png"),
//         //         decoration: BoxDecoration(
//         // image: const DecorationImage(
//         //   image: AssetImage(
//         //       "assets/images/splash.png"),
//         //   fit: BoxFit.cover,
//         // ),
//         //         ),
//               ),
//       ),
//     );
//   }
// }




import 'dart:async';

import 'package:e_commerce_app/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  OnboardingView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
        child: Container(
          color: Colors.black,
        
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/images/splash.png"),
              ),
      ),
    );
  }
}
