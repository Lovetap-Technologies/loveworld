import 'package:flutter/material.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/password_screens/success_password.dart';

import '../../components/constants.dart';

class ResetPassWord extends StatefulWidget {
  static String id = 'reset_password';
  const ResetPassWord({super.key});

  @override
  State<ResetPassWord> createState() => _ResetPassWordState();
}

class _ResetPassWordState extends State<ResetPassWord> {
  String passWord = '';
  bool isPassWordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 60,
              bottom: 10,
            ),
            child: Text(
              'Reset password',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 50,
            ),
            child: Text(
              'Please type something you’ll remember',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 15,
                color: Color.fromARGB(
                  166,
                  0,
                  0,
                  0,
                ),
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
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
                    'New PassWord',
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
              ],
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
                    'Confirm New PassWord',
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
              ],
            ),
          ),
          ExrawMaterialButton(
            () {
              Navigator.pushNamed(
                context,
                SuccessFulPassword.id,
              );
            },
            const Text(
              'Confirm PassWord',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            kbluebutton,
          )
        ],
      ),
    );
  }
}
