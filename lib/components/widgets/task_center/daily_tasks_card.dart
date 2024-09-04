import 'package:flutter/material.dart';

class DailyTaskCard extends StatelessWidget {
  final String title;
  final String timesDone;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;
  const DailyTaskCard({
    super.key,
    required this.title,
    required this.onPressed,
    required this.timesDone,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: foregroundColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      timesDone,
                      style: TextStyle(
                        color: foregroundColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Icon(Icons.timer_rounded,
                            size: 15, color: foregroundColor),
                        const SizedBox(height: 10),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
