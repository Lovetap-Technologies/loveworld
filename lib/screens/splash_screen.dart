import 'package:flutter/material.dart';
import 'package:loveworld/screens/onboarding_screen.dart';
import 'main home screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  _navigateToHome() async {
    // final prefs = await SharedPreferences.getInstance();
    // final showHome = prefs.getBool('showHome') ?? false;
    await Future.delayed(
      const Duration(
        milliseconds: 2500,
      ),
    );
// ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ),
    );
  }

  onboardingScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ),
    );
  }

  homeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Image.asset("assets/logo.png"),
                ),
                const Text(
                  "Loveworld Teens & Youth Ministry",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Powered By LoveTap Technologies",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
