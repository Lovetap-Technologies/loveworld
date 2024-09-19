import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class Certification extends StatelessWidget {
  const Certification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Text(
                  '  CERTIFICATIONS',
                  style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  '  8',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                NeumorphicButton(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                            elevation: 10,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.brown.withOpacity(0.6),
                              child: Icon(Icons.check_circle_outline_rounded,
                                  size: 50, color: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Teens Induction Certificate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.5, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.brown.withOpacity(0.1)),
                          child: Text(
                            'Certified',
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                          ),
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
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
                SizedBox(width: 10),
                NeumorphicButton(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                            elevation: 10,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.teal[600]?.withOpacity(0.6),
                              child: Icon(Icons.check_circle_outline_rounded,
                                  size: 50, color: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Teens Pastors Certification',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.teal.withOpacity(0.1)),
                          child: Text(
                            'Certified',
                            style: TextStyle(
                                color: Colors.teal.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                          ),
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
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
                SizedBox(width: 10),
                NeumorphicButton(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                            elevation: 10,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red.withOpacity(0.6),
                              child: Icon(Icons.check_circle_outline_rounded,
                                  size: 50, color: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Foundation School Certificate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13.98, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6),
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red.withOpacity(0.1)),
                          child: Text(
                            'Certified',
                            style: TextStyle(
                                color: Colors.red.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                          ),
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
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                NeumorphicButton(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                          elevation: 10,
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.deepPurple.withOpacity(0.6),
                            child: Icon(Icons.check_circle_outline_rounded,
                                size: 50, color: Colors.white70),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Youth Pastor Certification',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple.withOpacity(0.1)),
                        child: Text(
                          'Certified',
                          style: TextStyle(
                              color: Colors.deepPurple.withOpacity(0.6),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  borderRadius: 12,
                  bottomRightShadowBlurRadius: 15,
                  bottomRightShadowSpreadRadius: 1,
                  borderWidth: 5,
                  backgroundColor: Colors.white70,
                  topLeftShadowBlurRadius: 15,
                  topLeftShadowSpreadRadius: 1,
                  topLeftShadowColor: Colors.white,
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
                SizedBox(width: 10),
                NeumorphicButton(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                            elevation: 10,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  Colors.pink[600]?.withOpacity(0.6),
                              child: Icon(Icons.check_circle_outline_rounded,
                                  size: 50, color: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Teens Pastors Certification',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.pink.withOpacity(0.1)),
                          child: Text(
                            'Certified',
                            style: TextStyle(
                                color: Colors.pink.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                          ),
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
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
                SizedBox(width: 10),
                NeumorphicButton(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                            elevation: 10,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.amber.withOpacity(0.6),
                              child: Icon(Icons.check_circle_outline_rounded,
                                  size: 50, color: Colors.white70),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Foundation School Certificate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13.98, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6),
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.amber.withOpacity(0.1)),
                          child: Text(
                            'Certified',
                            style: TextStyle(
                                color: Colors.amber.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                          ),
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
                  bottomRightShadowColor: Colors.grey.shade100,
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  bottomRightOffset: Offset(4, 4),
                  topLeftOffset: Offset(-4, -4),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                textAlign: TextAlign.center,
                'LOVEWORLD TEENS & YOUTH MINISTRY',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
