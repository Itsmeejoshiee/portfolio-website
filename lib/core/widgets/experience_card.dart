import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ExperienceCard extends StatelessWidget {
  final String position;
  final String company;
  final String duration;
  final String description;

  const ExperienceCard({
    super.key,
    required this.position,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Card(
        color: cardBackgroundColor,
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                position,
                style: poppinsH3.copyWith(
                  color: textPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                company,
                style: poppinsBody.copyWith(
                  color: textPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                duration,
                style: poppinsBody.copyWith(
                  color: textPrimaryColor,
                  fontSize: 14,
                ),
              ),
              Text(
                description,
                style: poppinsBody.copyWith(
                  color: textPrimaryColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
