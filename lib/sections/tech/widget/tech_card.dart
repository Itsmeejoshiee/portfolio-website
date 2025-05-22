import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class TechCard extends StatelessWidget {
  final String techName;
  final String techImage;
  const TechCard({super.key, required this.techName, required this.techImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 80,
      child: Card(
        color: techStackCardColor,
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(techImage, width: 40, height: 40),
            const SizedBox(width: 10),
            Text(
              techName,
              style: poppinsBody.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
