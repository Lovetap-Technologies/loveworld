import 'package:flutter/material.dart';
import 'package:loveworld/components/raw_material_button.dart';

import '../../components/constants.dart';

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
            ],
          ),
          const Text(
            'Create An account',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
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
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
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
                            'Username',
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
                            hintText: 'Username',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: TextFormField(
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
                ),
              ],
            ),
          ),
          ExrawMaterialButton(
            () {},
            const Text(
              'Create account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            kcyanbutton,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              const Text(
                'By creating an account or signing you agree to our',
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  " Terms and Conditions",
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
