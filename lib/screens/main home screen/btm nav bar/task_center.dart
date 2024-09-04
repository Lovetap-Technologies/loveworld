import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loveworld/components/widgets/task_center/tasks.dart';
import '../../../components/widgets/task_center/daily_tasks_card.dart';
import '../../../components/widgets/task_center/news_card.dart';

class Home extends StatefulWidget {
  static String id = 'task_center';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(EvaIcons.menu, color: Color(0xff8B97A8), size: 30),
                Text(
                  "Task Center",
                  style: TextStyle(
                      color: Color(0xff595085),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Icon(EvaIcons.settings2Outline,
                    color: Color(0xff8B97A8), size: 31),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0, bottom: 5),
                        child: Text(
                          'LWTYM News',
                          style: TextStyle(
                              color: Color(0xff595085),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(width: 18),
                              NewsCard(
                                title: 'Short news title will be here',
                                color1: const Color(0xff25196B),
                                color2: const Color(0xffD994A7),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 18),
                              NewsCard(
                                title: 'Short news title will be here',
                                color1: const Color(0xff25196B),
                                color2: const Color(0xff94D9B4),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 18),
                              NewsCard(
                                title: 'Short news title will be here',
                                color1: const Color(0xff65616B),
                                color2: const Color(0xff2679B4),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, bottom: 5, top: 20),
                        child: Text(
                          'Daily Tasks:',
                          style: TextStyle(
                              color: Color(0xff595085),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(width: 18),
                              DailyTaskCard(
                                title: 'Win 5 souls Daily',
                                timesDone: '3',
                                backgroundColor: const Color(0xffF6F5FB),
                                foregroundColor: const Color(0xff403572),
                                onPressed: () {},
                              ),
                              DailyTaskCard(
                                title: 'Read Your TeeVo',
                                timesDone: '1',
                                backgroundColor: const Color(0xffFFF4F4),
                                foregroundColor: const Color(0xffFF5648),
                                onPressed: () {},
                              ),
                              DailyTaskCard(
                                title: 'Pray for 15 mins Daily',
                                timesDone: '2',
                                backgroundColor: const Color(0xffF5F9F9),
                                foregroundColor: const Color(0xff479696),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                  Column(
                    children: [
                      TasksCard(
                        icon: FontAwesomeIcons.calendar,
                        title: 'Hello, Youngie!',
                        subtitle:
                            'Here is a quick inspiration to blossom your Day {user-Name} eg: “Pleroma Emmanuel”',
                        subtitleColor: const Color(0xff403572),
                        backgroundColor: const Color(0xffF6F5FB),
                        foregroundColor: const Color(0xff403572),
                        onPressed: () {},
                      ),
                      TasksCard(
                        icon: FontAwesomeIcons.clock,
                        title: 'Physical Exercise',
                        subtitle: 'Have you done your 15mins Workout today?',
                        subtitleColor: const Color(0xffA27A7A),
                        backgroundColor: const Color(0xffFFF4F4),
                        foregroundColor: const Color(0xffFF5648),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
