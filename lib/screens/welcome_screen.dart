import 'package:flutter/material.dart';
import 'package:loveworld/components/constants.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/login_screen.dart';
import 'package:loveworld/screens/signup_screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: mediaquery.size.height * 0.30,
                ),
                child: const Text(
                  "WELCOME!",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Loveworld Teens & Youth Ministry",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Image.asset("assets/logo.png"),
              ),
              Column(
                children: [
                  ExrawMaterialButton(
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kbluebutton,
                  ),
                  SizedBox(
                    height: mediaquery.size.height * 0.01,
                  ),
                  ExrawMaterialButton(
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpWithMail(),
                        ),
                      );
                    },
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kcyanbutton,
                  ),
                ],
              ),
              SizedBox(height: mediaquery.size.height * 0.05),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Powered By Lovetap Technologies",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
