import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ProjectsCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  const ProjectsCard({
    super.key,
    required this.imagePath,
    required this.appName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(appName, style: poppinsH3)],
          ),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
