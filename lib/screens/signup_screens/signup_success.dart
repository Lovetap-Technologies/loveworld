import 'package:flutter/material.dart';
import 'package:loveworld/components/constants.dart';
import 'package:loveworld/components/raw_material_button.dart';

import '../login_screen.dart';

class SuccessFulSignup extends StatelessWidget {
  static String id = 'successful_signup';
  const SuccessFulSignup({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    var mediaquery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: mediaquery.size.height * 0.25,
              ),
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 60,
                bottom: 20,
              ),
              child: Text(
                'CONGRATULATIONS!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Your account has been created',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    color: Colors.black),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: mediaquery.size.height * 0.15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: ExrawMaterialButton(
                      () {
                        Navigator.pushNamed(
                          context,
                          LoginScreen.id,
                        );
                      },
                      const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      kcyanbutton,
                    ),
                  ),
                  const Text(
                    "Powered By Lovetap Technologies",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
