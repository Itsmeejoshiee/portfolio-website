import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ProjectsCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  final String appDescription;
  final Color appColor;

  const ProjectsCard({
    super.key,
    required this.imagePath,
    required this.appName,
    required this.appColor,
    required this.appDescription,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 350,
      child: Card(
        color: appColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(appName, style: poppinsH3),
                Text(appDescription, style: poppinsBody),
              ],
            ),
            Image.asset(imagePath, width: 200, height: 350, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
