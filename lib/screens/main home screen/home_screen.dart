import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:loveworld/screens/main%20home%20screen/drawer.dart';
import 'btm nav bar/events.dart';
import 'btm nav bar/ticket_screen.dart';
import 'btm nav bar/info.dart';
import 'btm nav bar/profile.dart';
import 'btm nav bar/task_center.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of titles based on the index
  final List<String> titles = [
    'Home',
    'Profile',
    'Tasks',
    'Notifications',
    'Tickets',
  ];

  final pages = [
    const Home(), // Replace with your actual home screen widget
    const Profile(),
    const PostScreen(),
    const NotificationsScreen(),
    const UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerIems(), // Assuming this builds your Drawer widget
      appBar: AppBar(
        title: Text(titles[_currentIndex]), // Dynamic title based on index
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Opens the drawer
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
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
        unselectedItemColor: Colors.indigo,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? const Icon(EvaIcons.home)
                : const Icon(EvaIcons.homeOutline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? const Icon(EvaIcons.person)
                : const Icon(EvaIcons.personOutline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? const Icon(EvaIcons.clock, size: 30)
                : const Icon(EvaIcons.clockOutline, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? const Icon(EvaIcons.bell)
                : const Icon(EvaIcons.bellOutline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? const FaIcon(FontAwesomeIcons.ticketSimple)
                : const FaIcon(FontAwesomeIcons.ticket),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.black26,
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
    );
  }
}
