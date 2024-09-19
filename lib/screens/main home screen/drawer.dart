import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loveworld/screens/discover_page.dart';
import 'package:loveworld/screens/live_tv_page.dart';
import 'package:loveworld/screens/schedule_page.dart';
import 'package:loveworld/screens/souls_page.dart';

class DrawerIems extends StatelessWidget {
  const DrawerIems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90.0),
      child: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 48, 26, 126),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/logo.png', height: 70, width: 70),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close, color: Colors.white, size: 40))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading: const Icon(EvaIcons.star, color: Colors.white),
                  title: const Text(
                    'Discover',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(Discover());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading: const Icon(EvaIcons.trendingUp, color: Colors.white),
                  title: const Text(
                    'Live TV',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(LiveTV());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading:
                      const Icon(EvaIcons.calendarOutline, color: Colors.white),
                  title: const Text(
                    'Schedules',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(Schedule());
                  },
                  trailing: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading: const Icon(EvaIcons.sunOutline, color: Colors.white),
                  title: const Text(
                    'Souls',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                    Get.to(Souls());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading: const Icon(EvaIcons.shoppingBagOutline,
                      color: Colors.white),
                  title: const Text(
                    'Give',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Handle home navigation
                  },
                  trailing:
                      const Icon(Icons.arrow_drop_down, color: Colors.white),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading:
                      const Icon(EvaIcons.bellOutline, color: Colors.white),
                  title: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                  },
                  trailing: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.white70)),
                child: ListTile(
                  leading:
                      const Icon(EvaIcons.settingsOutline, color: Colors.white),
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
