import 'package:flutter/material.dart';
import 'package:loveworld/screens/main%20home%20screen/home_screen.dart';
import 'package:loveworld/screens/login_screen.dart';
import 'package:loveworld/screens/password_screens/forgotten_password.dart';
import 'package:loveworld/screens/password_screens/otp_verification.dart';
import 'package:loveworld/screens/password_screens/reset_password.dart';
import 'package:loveworld/screens/password_screens/success_password.dart';
import 'package:loveworld/screens/signup_screens/signup_screen.dart';
import 'package:loveworld/screens/signup_screens/signup_success.dart';
import 'package:loveworld/screens/splash_screen.dart';
import 'package:loveworld/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Future<FirebaseApp> firebaseApp = Firebase.initializeApp();

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LWTYM',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.indigo,
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        SuccessFulSignup.id: (context) => const SuccessFulSignup(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpWithMail.id: (context) => const SignUpWithMail(),
        ForgottenPassWord.id: (context) => ForgottenPassWord(),
        ResetPassWord.id: (context) => const ResetPassWord(),
        OTPVerification.id: (context) => const OTPVerification(),
        SuccessFulPassword.id: (context) => const SuccessFulPassword(),
        // AddDetails.id: (context) => const AddDetails(),
        // Home.id: (context) => const Home(),
        // NotificationsScreen.id: (context) => const NotificationsScreen(),
        // PostScreen.id: (context) => const PostScreen(),
        // ShortsScreen.id: (context) => const ShortsScreen(),
        // UserScreen.id: (context) => const UserScreen()
      },
    );
  }
}
