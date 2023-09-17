import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = 'task_center';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            child: const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Color(0xff595085),
                      ),
                      Text(
                        "Task Center",
                        style: TextStyle(
                          color: Color(0xff595085),
                        ),
                      ),
                      Icon(
                        Icons.settings,
                        color: Color(0xff595085),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
