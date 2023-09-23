import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
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
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.indigo,
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
                  EvaIcons.homeOutline,
                ),
                label: 'Task Center',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.personOutline,
                ),
                label: 'Shorts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.clockOutline,
                  size: 30,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.bookOutline,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.ticketSimple,
                  color: Colors.deepOrange,
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
