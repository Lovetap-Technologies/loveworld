import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static String id = 'user_screen';
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('user')],
      ),
    );
  }
}
