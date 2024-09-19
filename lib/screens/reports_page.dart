import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicButton(
                onTap: () {},
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange.withOpacity(0.1),
                        child: Icon(
                          Icons.flash_on,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '6980',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Souls Recorded',
                              style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      )
                    ],
                  ),
                ),
                borderRadius: 12,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.white70,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade300,
                height: 70,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(5),
                bottomRightOffset: Offset(4, 4),
                topLeftOffset: Offset(-4, -4),
              ),
              SizedBox(width: 20),
              NeumorphicButton(
                onTap: () {},
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent.withOpacity(0.1),
                        child: Icon(
                          Icons.bar_chart_rounded,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#2',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Leaderboard',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      )
                    ],
                  ),
                ),
                borderRadius: 12,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.white70,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade300,
                height: 70,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(5),
                bottomRightOffset: Offset(4, 4),
                topLeftOffset: Offset(-4, -4),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicButton(
                onTap: () {},
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent.withOpacity(0.1),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '83%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Accuracy',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      )
                    ],
                  ),
                ),
                borderRadius: 12,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.white70,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade300,
                height: 70,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(5),
                bottomRightOffset: Offset(4, 4),
                topLeftOffset: Offset(-4, -4),
              ),
              SizedBox(width: 20),
              NeumorphicButton(
                onTap: () {},
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amberAccent.withOpacity(0.1),
                        child: Icon(
                          Icons.speed_rounded,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '86%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Compliancy',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      )
                    ],
                  ),
                ),
                borderRadius: 12,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.white70,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade300,
                height: 70,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(5),
                bottomRightOffset: Offset(4, 4),
                topLeftOffset: Offset(-4, -4),
              ),
            ],
          ),
          SizedBox(height: 20),
          NeumorphicButton(
            onTap: () {},
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.square_rounded,
                          color: Colors.lightBlue,
                          size: 45,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Soul Winning',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 10,
                                width: 200,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.purpleAccent.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Container(
                                height: 10,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '28%',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text('Achieved',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.square_rounded,
                          color: Colors.grey,
                          size: 45,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Healthy Lifestyle',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 10,
                                width: 200,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.purpleAccent.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Container(
                                height: 10,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '35%',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text('Achieved',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.square_rounded,
                          color: const Color.fromARGB(255, 66, 38, 114),
                          size: 45,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Soul Winning',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 10,
                                width: 200,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.purpleAccent.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Container(
                                height: 10,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '40%',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text('Achieved',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.withOpacity(0.4)),
                              overflow: TextOverflow.ellipsis)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            borderRadius: 12,
            bottomRightShadowBlurRadius: 15,
            bottomRightShadowSpreadRadius: 1,
            borderWidth: 5,
            backgroundColor: Colors.white70,
            topLeftShadowBlurRadius: 15,
            topLeftShadowSpreadRadius: 1,
            topLeftShadowColor: Colors.white,
            bottomRightShadowColor: Colors.grey.shade300,
            height: 200,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.all(5),
            bottomRightOffset: Offset(4, 4),
            topLeftOffset: Offset(-4, -4),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Text(
              textAlign: TextAlign.center,
              'LOVEWORLD TEENS & YOUTH MINISTRY',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
