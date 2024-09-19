import 'package:flutter/material.dart';
import 'package:loveworld/screens/achievements_page.dart';
import 'package:loveworld/screens/certification_page.dart';
import 'package:loveworld/screens/reports_page.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final List<Widget> _tabs = [
    // const Center(child: Text('REPORTS')),
    // const Center(child: Text('ACHIEVEMENTS')),
    // const Center(child: Text('CERTIFICATION')),
    Reports(),
    Achievements(),
    Certification(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
          title: Text(
            'PLEROMA EMMANUEL',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            labelColor: Colors.indigoAccent,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: [
              Tab(
                  child: Text(
                'REPORTS',
                style:
                    TextStyle(fontWeight: FontWeight.w500, letterSpacing: 0.7),
              )),
              Tab(
                  child: Text(
                'ACHIEVEMENTS',
                style:
                    TextStyle(fontWeight: FontWeight.w500, letterSpacing: 0.7),
              )),
              Tab(
                  child: Text(
                'CERTIFICATION',
                style:
                    TextStyle(fontWeight: FontWeight.w500, letterSpacing: 0.7),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
