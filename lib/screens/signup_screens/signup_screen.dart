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
  final PasswordController = TextEditingController();
  String Password = '';
  bool isPasswordVisible = false;
  bool iAgree = false;

  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: mediaquery.size.height * 0.06,
            ),
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
                            textInputAction: TextInputAction.next,
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
                            textInputAction: TextInputAction.next,
                            controller: emailController,
                            onChanged: (value) => setState(() {}),
                            onFieldSubmitted: (value) => setState(() {
                              // authenticationService.signup(
                              //   email: value,
                              //   Password: '',
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
                            textInputAction: TextInputAction.next,
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
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: PasswordController,
                          onChanged: (value) => setState(() {}),
                          onFieldSubmitted: (value) => setState(() {
                            // authenticationService.signup(
                            //   email: '',
                            //   Password: value,
                            // );
                          }),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !isPasswordVisible,
                          decoration: inPutDecoration.copyWith(
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: isPasswordVisible
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
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onChanged: (value) => setState(() {
                            Password = value;
                          }),
                          onFieldSubmitted: (value) => setState(() {
                            Password = value;
                          }),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !isPasswordVisible,
                          decoration: inPutDecoration.copyWith(
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: isPasswordVisible
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
                                    value: iAgree,
                                    onChanged: (value) => setState(() {
                                      iAgree = !iAgree;
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
                  'Already have an account?',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
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
      ),
    );
  }
}
