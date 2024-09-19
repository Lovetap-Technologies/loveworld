import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static String id = 'shorts_screen';
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: size.height * 0.07),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ticket_gradient.png'))),
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 150),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/ticket.png'))),
            ),
            Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'ITPLC 2024',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '11TH - 14TH NOVEMBER, 2024',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                Text(
                  'Ticket Number',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '3423321',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(image: AssetImage('assets/qr_code.png')),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'LOVEWORLD TEENS & YOUTH MINISTRY EVENTS',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    )));
  }
}
