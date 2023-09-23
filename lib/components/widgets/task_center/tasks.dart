import 'package:flutter/material.dart';

class TasksCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subtitle;
  final Color subtitleColor;
  final Color foregroundColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const TasksCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.subtitleColor,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 7),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Icon(
                        icon,
                        color: foregroundColor,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        title,
                        style: TextStyle(
                          color: foregroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    SizedBox(
                      width: 250,
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          color: subtitleColor.withOpacity(0.7),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: foregroundColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
