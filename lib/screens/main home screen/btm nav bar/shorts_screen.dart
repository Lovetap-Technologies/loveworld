import 'package:flutter/material.dart';

class ShortsScreen extends StatefulWidget {
  static String id = 'shorts_screen';
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                ),
                const Icon(
                  Icons.search_outlined,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: ListView(
                children: const [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
