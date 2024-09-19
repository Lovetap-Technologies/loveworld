import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../components/widgets/comments.dart';

class LiveTV extends StatefulWidget {
  const LiveTV({super.key});

  @override
  State<LiveTV> createState() => _LiveTVState();
}

class _LiveTVState extends State<LiveTV> with TickerProviderStateMixin {
  late AnimationController _favoriteController;

  @override
  void initState() {
    super.initState();
    _favoriteController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _favoriteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(
          'Live',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/onboard_3.png'))),
              ),
              Container(
                margin: EdgeInsets.all(35),
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.white),
                    Text(
                      ' LIVE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.height * 0.3),
                  child: Text(
                    'Your Loveworld Specials With Pastor Chris',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {
                    if (_favoriteController.status ==
                        AnimationStatus.dismissed) {
                      _favoriteController.reset();
                      _favoriteController.animateTo(0.6);
                    } else {
                      _favoriteController.reverse();
                    }
                  },
                  icon: Lottie.asset(Icons8.heart_color,
                      controller: _favoriteController, width: 35, height: 35),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 30),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.remove_red_eye, color: Colors.grey, size: 20),
                    Text(
                      "125,908",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      ' Views',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.grey, size: 20),
                    Text(
                      "47, 987",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      ' Likes',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Text(
            '    Comments',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Commentbody();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: 205,
                child: Column(
                  children: [
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.close_rounded)),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5, left: 8),
                      margin: EdgeInsets.only(
                          left: 20, right: 20, bottom: 10, top: 20),
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Write your comment'),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 62, right: 20),
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(12))),
                  child: Text(
                    'POST',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ));
        },
        child: Icon(Icons.add_comment_rounded, size: 36),
      ),
    );
  }
}
