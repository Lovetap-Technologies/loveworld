import 'package:flutter/material.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/login_screen.dart';
import 'package:loveworld/screens/signup_screens/signup_success.dart';

import '../../../components/constants.dart';

class SignUpWithMail extends StatefulWidget {
  static String id = 'continue_with_maill';
  const SignUpWithMail({super.key});

  @override
  State<SignUpWithMail> createState() => _SignUpWithMailState();
}

// AuthenticationService authenticationService = AuthenticationService();

class _SignUpWithMailState extends State<SignUpWithMail> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String passWord = '';
  bool isPassWordVisible = false;
  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
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
              const Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
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
                            'Full Name',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: inPutDecoration.copyWith(
                            hintText: 'Enter Full Name ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
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
                          onChanged: (value) => setState(() {}),
                          onFieldSubmitted: (value) => setState(() {
                            // authenticationService.signup(
                            //   email: value,
                            //   password: '',
                            // );
                          }),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: inPutDecoration.copyWith(
                            hintText: 'Enter Email Address',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
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
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: inPutDecoration.copyWith(
                            hintText: '+234',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
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
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        onChanged: (value) => setState(() {}),
                        onFieldSubmitted: (value) => setState(() {
                          // authenticationService.signup(
                          //   email: '',
                          //   password: value,
                          // );
                        }),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.visiblePassword,
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
                Container(
                  margin: const EdgeInsets.symmetric(
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
                          'Confirm PassWord',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        onChanged: (value) => setState(() {
                          passWord = value;
                        }),
                        onFieldSubmitted: (value) => setState(() {
                          passWord = value;
                        }),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.visiblePassword,
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
                      Row(
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
                                  'I agree to the terms of use',
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
                        ],
                      ),
                    ],
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
                  SuccessFulSignup.id,
                );
              },
              const Text(
                'Create account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kcyanbutton,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account ?',
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
