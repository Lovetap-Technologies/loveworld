import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  static String id = 'notifications_screen';
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: _mediaquery.size.height * 0.15,
          title: const Center(
            child: Text(
              'Notification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            physics: BouncingScrollPhysics(),
            labelPadding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            indicatorColor: Color(
              0xff0065FF,
            ),
            labelColor: Color(
              0xff0065FF,
            ),
            unselectedLabelColor: Color(
              0xff757575,
            ),
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Request',
              ),
              Tab(
                text: 'Invites',
              ),
              Tab(
                text: 'Mentioned',
              ),
            ],
          ),
        ),
        body: Column(
          children: const [
            Text(
              'Notification',
            ),
          ],
        ),
      ),
    );
  }
}
