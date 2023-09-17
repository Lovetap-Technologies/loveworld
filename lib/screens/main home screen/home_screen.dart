import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import 'btm nav bar/events.dart';
import 'btm nav bar/profile.dart';
import 'btm nav bar/schedule.dart';
import 'btm nav bar/shorts_screen.dart';
import 'btm nav bar/task_center.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final pages = [
    const Home(),
    const ShortsScreen(),
    const PostScreen(),
    const NotificationsScreen(),
    const UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            selectedItemColor: kcyanbutton,
            unselectedItemColor: const Color.fromARGB(
              183,
              158,
              158,
              158,
            ),
            onTap: (value) => setState(() {
              _currentIndex = value;
            }),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Task Center',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'Shorts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.timer_rounded,
                  size: 30,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_outlined,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
                label: 'User',
              ),
            ],
          ),
          backgroundColor: Colors.black26,
          body: IndexedStack(
            index: _currentIndex,
            children: pages,
          ),
        ),
      ],
    );
  }
}
