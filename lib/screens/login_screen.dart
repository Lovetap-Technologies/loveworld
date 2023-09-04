import 'package:flutter/material.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/password_screens/forgotten_password.dart';
import 'package:loveworld/screens/signup_screen.dart';

import '../../components/constants.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passWord = TextEditingController();
  bool isPassWordVisible = false;
  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    passWord.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  Color dividerColor = const Color.fromARGB(
    138,
    83,
    83,
    83,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              bottom: 10,
            ),
            child: Text(
              'Hi, Welcome!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
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
                  textInputAction: TextInputAction.next,
                  decoration: inPutDecoration.copyWith(
                    hintText: 'konethus@konethus.com',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Text(
                    'PassWord',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: passWord,
                  onChanged: (value) => setState(() {}),
                  onFieldSubmitted: (value) => setState(() {}),
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: !isPassWordVisible,
                  decoration: inPutDecoration.copyWith(
                    hintText: 'Enter PassWord',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassWordVisible = !isPassWordVisible;
                        });
                      },
                      icon: isPassWordVisible
                          ? const Icon(
                              Icons.visibility_outlined,
                            )
                          : const Icon(
                              Icons.visibility_off_outlined,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: const Color.fromARGB(
                          32,
                          0,
                          0,
                          0,
                        ),
                        checkColor: Colors.black,
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                            155,
                            158,
                            158,
                            158,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          5,
                        )),
                        value: isPassWordVisible,
                        onChanged: (value) => setState(() {
                          isPassWordVisible = !isPassWordVisible;
                        }),
                      ),
                      const Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(
                            166,
                            0,
                            0,
                            0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ForgottenPassWord.id,
                    );
                  },
                  child: const Text(
                    'Forgot PassWord?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ExrawMaterialButton(
            () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            const Text(
              'Log In',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            kbluebutton,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Divider(
                    color: dividerColor,
                    height: 5,
                  ),
                ),
              ),
              const Text(
                'or with',
                style: TextStyle(
                  color: Color.fromARGB(
                    123,
                    0,
                    0,
                    0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Divider(
                    color: dividerColor,
                    height: 5,
                  ),
                ),
              )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 30,
          //   ),
          //   child: Row(
          //     children: [
          //       rawMaterialButtonLogIn(
          //         "assets/images/apple.png",
          //         'Apple',
          //         7,
          //         35,
          //       ),
          //       rawMaterialButtonLogIn(
          //         "assets/images/google.png",
          //         'Google',
          //         35,
          //         7,
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SignUpWithMail.id,
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
