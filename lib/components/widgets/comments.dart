import 'package:flutter/material.dart';

class Commentbody extends StatelessWidget {
  const Commentbody({super.key});

  @override
  Widget build(BuildContext context) {
    // print("(${snapshot['profilePic']}) user pic");
    return Container(
      padding: const EdgeInsets.only(bottom: 8, left: 8),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    profileImage(
                      backgroundImage: 'assets/logo.png',
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 220,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'pst.pleroma',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            '6 mins ago',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Icon(Icons.arrow_back, color: Colors.indigo, size: 20),
                //     Text(
                //       'Reply',
                //       style: TextStyle(
                //           fontSize: 14,
                //           fontWeight: FontWeight.w500,
                //           color: Colors.indigo),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 6.0),
            child: Text(
              'Praise the Lord forever. Thank you so much for your love Pastor Sir.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileImage({required String backgroundImage}) {
    return CircleAvatar(
      backgroundImage: AssetImage(backgroundImage),
    );
  }
}
