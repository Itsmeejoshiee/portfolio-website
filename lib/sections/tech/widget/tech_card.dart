import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class TechCard extends StatelessWidget {
  final String techName;
  final String techImage;
  const TechCard({super.key, required this.techName, required this.techImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 80,
      child: Card(
        color: cardBackgroundColor,
        child: Row(
          children: [
            Image.asset(techImage, width: 40, height: 40),
            Text(techName, style: poppinsBody),
          ],
        ),
      ),
    );
  }
}
