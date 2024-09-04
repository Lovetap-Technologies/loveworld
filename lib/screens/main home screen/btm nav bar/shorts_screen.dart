import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static String id = 'shorts_screen';
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('user')],
      ),
    );
  }
}
