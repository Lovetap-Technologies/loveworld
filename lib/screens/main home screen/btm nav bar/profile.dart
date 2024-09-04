import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String id = 'profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(EvaIcons.menu, color: Color(0xff8B97A8), size: 30),
                Text(
                  "Profile",
                  style: TextStyle(
                      color: Color(0xff595085),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Icon(EvaIcons.settings2Outline,
                    color: Color(0xFF8B97A8), size: 31),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: const CachedNetworkImageProvider(
                                "https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wwu1?ver=1587",
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Positioned(
                                    left: 110,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrangeAccent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 3)),
                                          child: const Icon(
                                              Icons.cameraswitch_sharp,
                                              size: 25,
                                              color: Colors.white)),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
