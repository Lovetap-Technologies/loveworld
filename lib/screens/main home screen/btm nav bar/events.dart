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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                'Events',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'ITPLC 2023',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 85,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 179,
                              child: Text(
                                'International Teens Pastors & Leaders Conference',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.purple),
                              ),
                            ),
                            Text(
                              '11th\nNOV',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                      flex: 3),
                  Expanded(
                      child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Image(
                          color: Colors.white,
                          image: NetworkImage(
                              'https://pngimg.com/uploads/qr_code/qr_code_PNG6.png')),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
