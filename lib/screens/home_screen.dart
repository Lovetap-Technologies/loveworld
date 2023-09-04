import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  // final pages = [
  //   const Home(),
  //   const ShortsScreen(),
  //   const PostScreen(),
  //   const NotificationsScreen(),
  //   const UserScreen()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // return PageView(
    //   children: [
    //     Scaffold(
    //       bottomNavigationBar: BottomNavigationBar(
    //         selectedLabelStyle: const TextStyle(
    //           fontSize: 12,
    //         ),
    //         currentIndex: _currentIndex,
    //         backgroundColor: Colors.white,
    //         selectedItemColor: kprimaryColor,
    //         unselectedItemColor: const Color.fromARGB(
    //           183,
    //           158,
    //           158,
    //           158,
    //         ),
    //         onTap: (value) => setState(() {
    //           _currentIndex = value;
    //         }),
    //         items: const [
    //           BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.home_outlined,
    //             ),
    //             label: 'Home',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.videocam_outlined,
    //             ),
    //             label: 'Shorts',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.add_circle_outline,
    //               size: 30,
    //             ),
    //             label: 'Post',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.notifications_outlined,
    //             ),
    //             label: 'Notification',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.account_circle_outlined,
    //             ),
    //             label: 'User',
    //           ),
    //         ],
    //       ),
    //       backgroundColor: Colors.black26,
    //       body: IndexedStack(
    //         index: _currentIndex,
    //         children: pages,
    //       ),
    //     ),
    //   ],
    // );
  }
}
