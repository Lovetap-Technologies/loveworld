import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;
  final VoidCallback onPressed;

  const NewsCard(
      {super.key,
      required this.title,
      required this.color1,
      required this.color2,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color1, color2],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/container_design.png'),
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 135,
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
