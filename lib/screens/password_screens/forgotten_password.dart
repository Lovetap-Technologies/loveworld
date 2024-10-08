import 'package:flutter/material.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/Password_screens/otp_verification.dart';
import '../../components/constants.dart';

class ForgottenPassword extends StatelessWidget {
  static String id = 'Forgotten_Password_screen';
  final emailController = TextEditingController();
  ForgottenPassword({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Text(
              'Don’t worry! It happens. Please enter the email associated with your account.',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: inPutDecoration.copyWith(
                    hintText: 'konethus@konethus.com',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ExrawMaterialButton(
              () {
                Navigator.pushNamed(
                  context,
                  OTPVerification.id,
                );
              },
              const Text(
                'Send Code',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              kcyanbutton,
            ),
          )
        ],
      ),
    );
  }
}
