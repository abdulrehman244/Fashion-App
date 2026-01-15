import 'package:concentric_transition/page_view.dart';
import 'package:e_commerce_app/Login_Screen.dart';
import 'package:flutter/material.dart';

final pages = [
  _Page(Colors.grey.shade900, "Welcome to Fashions App", "assets/images/pic1.png"),
  _Page(Colors.grey.shade800, "Fast & Secure Shopping", "assets/images/pic2.png"),
  _Page(Colors.grey.shade700, "Discover the Best Deals", "assets/images/pic3.png"),
];



class _Page {
  final Color color;
  final String title;
  final String image;

  _Page(this.color, this.title, this.image);
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 40,
        colors: pages.map((e) => e.color).toList(),
        itemCount: pages.length,
         nextButtonBuilder: (context) {
    return const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.white,
      size: 30,
    );
  },
        onChange: (index) {
          setState(() => currentIndex = index);
        },
        onFinish: () {
         Navigator.pushReplacement(
  context,
  PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 600),
    pageBuilder: (_, animation, __) => const LoginScreen(),
    transitionsBuilder: (_, animation, __, child) {
      final tween = Tween(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ),
);

        },
        itemBuilder: (index) {
          return Stack(
            children: [
              Center(
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.5, end: 1.0),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            pages[index].image,
                            height: 300,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            pages[index].title,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

             
            
            ],
          );
        },
      ),
    );
  }
}
