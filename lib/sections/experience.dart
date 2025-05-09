import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Experience", style: poppinsH2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 200, height: 200, color: Colors.red),
              Container(width: 200, height: 200, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
