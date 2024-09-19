import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loveworld/screens/create_partnership_target_page.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 8),
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.red[400]?.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: CircleAvatar(
                              radius: 20,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage('assets/logo.png'),
                              ),
                            )),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TAP Partnership Target',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'You are almost there 86% completed',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 10),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 30,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                height: 25,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star_border_rounded,
                                            size: 18),
                                        Text(
                                          '  5200/6000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, top: 2),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor:
                                          Colors.orange.withOpacity(0.5),
                                      child: Icon(
                                        Icons.monetization_on_outlined,
                                        size: 18,
                                        color: Colors.black12.withOpacity(0.5),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, right: 25),
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Text(
                  'GIVE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 8),
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.pink[600]?.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: CircleAvatar(
                              radius: 20,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage('assets/logo.png'),
                              ),
                            )),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rhapsody Partnership Target',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'You are on your way 2% completed',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 10),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 30,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star_border_rounded,
                                            size: 18),
                                        Text(
                                          '  200/10000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, top: 2),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor:
                                          Colors.orange.withOpacity(0.5),
                                      child: Icon(
                                        Icons.monetization_on_outlined,
                                        size: 18,
                                        color: Colors.black12.withOpacity(0.5),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, right: 25),
                width: 55,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Text(
                  'GIVE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 215.0),
            child: Text(
              textAlign: TextAlign.center,
              'LOVEWORLD TEENS & YOUTH MINISTRY',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Get.to(CreatePartnershipTarget());
        },
        backgroundColor: Colors.red[300],
        child: Icon(Icons.add, size: 40, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
